import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:B2B/app/core/networking/auth_interceptor.dart';
import 'package:B2B/app/features/auth/data/auth_session_notifier.dart';
import 'package:B2B/app/features/auth/data/models/login_request_body.dart';
import 'package:B2B/app/features/auth/data/repos/auth_repository.dart';
import 'package:B2B/app/features/auth/data/session_expired_exception.dart';
import 'package:B2B/app/features/auth/data/storage/token_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('login persists the JWT and store account type', () async {
    final harness = _Harness(
      apiHandler: (request) async => _jsonResponse(200, {
        'data': {
          'token': 'jwt-token',
          'token_type': 'bearer',
          'store': {'id': 1, 'name': 'Store', 'email': 'store@example.com'},
        },
        'message': 'Success',
        'errors': null,
      }),
    );
    await harness.repository.login(
      LoginRequestBody(email: 'store@example.com', password: 'password'),
    );
    expect(harness.storage.token, 'jwt-token');
    expect(harness.storage.accountType, AccountType.store);
  });

  test('protected requests receive the bearer token', () async {
    String? authorization;
    final harness = _Harness(
      initialToken: 'saved-token',
      apiHandler: (request) async {
        authorization = request.headers['Authorization'] as String?;
        return _jsonResponse(200, {'ok': true});
      },
    );
    await harness.apiDio.get<dynamic>('profile');
    expect(authorization, 'Bearer saved-token');
  });

  test('app startup restores a session after a protected request succeeds',
      () async {
    final harness = _Harness(
      initialToken: 'valid-token',
      apiHandler: (request) async => _jsonResponse(200, {'data': {}}),
    );

    expect(await harness.repository.restoreSession(), isTrue);
    expect(harness.storage.token, 'valid-token');
  });

  test('app startup rejects a token that cannot be refreshed', () async {
    final harness = _Harness(
      initialToken: 'expired-token',
      apiHandler: (request) async =>
          _jsonResponse(401, {'message': 'Unauthenticated'}),
      refreshHandler: (request) async => _jsonResponse(401, {
        'data': null,
        'message': 'Token cannot be refreshed',
        'errors': null,
      }),
    );

    expect(await harness.repository.restoreSession(), isFalse);
    expect(harness.storage.token, isNull);
    expect(harness.storage.clearCount, 1);
  });

  test('a 401 refreshes, saves the new JWT, and retries once', () async {
    var apiCalls = 0;
    var refreshCalls = 0;
    final harness = _Harness(
      initialToken: 'old-token',
      apiHandler: (request) async {
        apiCalls++;
        if (request.headers['Authorization'] == 'Bearer old-token') {
          return _jsonResponse(401, {'message': 'Unauthenticated'});
        }
        return _jsonResponse(200, {'ok': true});
      },
      refreshHandler: (request) async {
        refreshCalls++;
        expect(request.headers['Authorization'], 'Bearer old-token');
        return _jsonResponse(200, {
          'data': {'token': 'new-token', 'token_type': 'bearer'},
          'message': 'Token refreshed',
          'errors': null,
        });
      },
    );
    final response = await harness.apiDio.get<dynamic>('profile');
    expect(response.statusCode, 200);
    expect(harness.storage.token, 'new-token');
    expect(refreshCalls, 1);
    expect(apiCalls, 2);
  });

  test('concurrent 401 responses share one refresh network call', () async {
    var refreshCalls = 0;
    final harness = _Harness(
      initialToken: 'old-token',
      apiHandler: (request) async {
        if (request.headers['Authorization'] == 'Bearer old-token') {
          return _jsonResponse(401, {'message': 'Unauthenticated'});
        }
        return _jsonResponse(200, {'path': request.path});
      },
      refreshHandler: (request) async {
        refreshCalls++;
        await Future<void>.delayed(const Duration(milliseconds: 20));
        return _jsonResponse(200, {
          'data': {'token': 'rotated-token'},
          'message': 'Token refreshed',
          'errors': null,
        });
      },
    );
    final responses = await Future.wait([
      harness.apiDio.get<dynamic>('profile'),
      harness.apiDio.get<dynamic>('dashboard'),
      harness.apiDio.get<dynamic>('offers'),
    ]);
    expect(responses.map((response) => response.statusCode), everyElement(200));
    expect(refreshCalls, 1);
    expect(harness.storage.token, 'rotated-token');
  });

  test('a retried request returning 401 does not create a refresh loop',
      () async {
    var refreshCalls = 0;
    final harness = _Harness(
      initialToken: 'old-token',
      apiHandler: (request) async =>
          _jsonResponse(401, {'message': 'Unauthenticated'}),
      refreshHandler: (request) async {
        refreshCalls++;
        return _jsonResponse(200, {
          'data': {'token': 'new-token'},
          'message': 'Token refreshed',
          'errors': null,
        });
      },
    );
    await expectLater(
      harness.apiDio.get<dynamic>('profile'),
      throwsA(isA<DioException>()),
    );
    expect(refreshCalls, 1);
    expect(harness.storage.token, isNull);
    expect(harness.storage.clearCount, 1);
  });

  test('login 401 never starts refresh', () async {
    var refreshCalls = 0;
    final harness = _Harness(
      apiHandler: (request) async =>
          _jsonResponse(401, {'message': 'Invalid credentials'}),
      refreshHandler: (request) async {
        refreshCalls++;
        return _jsonResponse(500, {});
      },
    );
    await expectLater(
      harness.repository.login(
        LoginRequestBody(email: 'bad@example.com', password: 'bad'),
      ),
      throwsA(isA<DioException>()),
    );
    expect(refreshCalls, 0);
  });

  test('refresh 403 inactive clears session and reports inactive status',
      () async {
    final harness = _Harness(
      initialToken: 'old-token',
      refreshHandler: (request) async => _jsonResponse(403, {
        'data': null,
        'message': 'Account is inactive',
        'errors': null,
      }),
    );
    await expectLater(
      harness.repository.refreshToken(),
      throwsA(
        isA<SessionExpiredException>().having(
          (error) => error.status,
          'status',
          AuthSessionStatus.accountInactive,
        ),
      ),
    );
    expect(harness.storage.token, isNull);
    expect(harness.storage.clearCount, 1);
  });

  test('logout clears local session even when the network request fails',
      () async {
    final harness = _Harness(
      initialToken: 'saved-token',
      apiHandler: (request) async =>
          _jsonResponse(500, {'message': 'Server error'}),
    );
    await expectLater(
      harness.repository.logout(),
      throwsA(isA<DioException>()),
    );
    expect(harness.storage.token, isNull);
    expect(harness.storage.clearCount, 1);
  });
}

typedef _RequestHandler = Future<ResponseBody> Function(RequestOptions request);

class _Harness {
  _Harness({
    String? initialToken,
    _RequestHandler? apiHandler,
    _RequestHandler? refreshHandler,
  }) : storage = _MemoryTokenStorage(
          token: initialToken,
          accountType: initialToken == null ? null : AccountType.store,
        ) {
    apiDio = Dio(BaseOptions(baseUrl: 'https://example.test/api/store/'));
    final refreshDio =
        Dio(BaseOptions(baseUrl: 'https://example.test/api/store/'));
    final retryDio =
        Dio(BaseOptions(baseUrl: 'https://example.test/api/store/'));
    apiDio.httpClientAdapter = _CallbackAdapter(
      apiHandler ?? (request) async => _jsonResponse(200, {}),
    );
    refreshDio.httpClientAdapter = _CallbackAdapter(
      refreshHandler ?? (request) async => _jsonResponse(200, {}),
    );
    retryDio.httpClientAdapter = _CallbackAdapter(
      apiHandler ?? (request) async => _jsonResponse(200, {}),
    );
    repository = AuthRepository(
      apiDio: apiDio,
      refreshDio: refreshDio,
      tokenStorage: storage,
      sessionNotifier: AuthSessionNotifier(),
    );
    apiDio.interceptors.add(
      AuthInterceptor(retryDio: retryDio, authRepository: repository),
    );
  }

  final _MemoryTokenStorage storage;
  late final Dio apiDio;
  late final AuthRepository repository;
}

class _MemoryTokenStorage implements TokenStorage {
  _MemoryTokenStorage({this.token, this.accountType});

  String? token;
  AccountType? accountType;
  int clearCount = 0;

  @override
  Future<void> clearSession() async {
    clearCount++;
    token = null;
    accountType = null;
  }

  @override
  Future<void> deleteToken() async => token = null;

  @override
  Future<AccountType?> readAccountType() async => accountType;

  @override
  Future<String?> readToken() async => token;

  @override
  Future<void> saveAccountType(AccountType type) async => accountType = type;

  @override
  Future<void> saveToken(String value) async => token = value;
}

class _CallbackAdapter implements HttpClientAdapter {
  _CallbackAdapter(this.handler);

  final _RequestHandler handler;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) =>
      handler(options);

  @override
  void close({bool force = false}) {}
}

ResponseBody _jsonResponse(int statusCode, Map<String, dynamic> body) {
  return ResponseBody.fromString(
    jsonEncode(body),
    statusCode,
    headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    },
  );
}
