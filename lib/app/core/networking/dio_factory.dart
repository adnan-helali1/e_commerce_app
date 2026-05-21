import 'package:B2B/app/core/helpers/shared_pref_helper.dart';
import 'package:B2B/app/core/networking/api_constans.dart';
import 'package:dio/dio.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? _dio;

  /// ===============================
  /// Create & return Dio instance
  /// ===============================
  static Future<Dio> getDio() async {
    if (_dio == null) {
      final dio = Dio(
        BaseOptions(
          baseUrl: ApiConstants.apiBaseUrl,
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          headers: {'Accept': 'application/json'},
        ),
      );
      _addInterceptors(dio);
      _dio = dio;
      return dio;
    }
    return _dio!;
  }

  /// ===============================
  /// Interceptors
  /// ===============================
  static void _addInterceptors(Dio dio) {
    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          final isAuthRequest = options.path == ApiConstants.login ||
              options.path == ApiConstants.register;

          if (!isAuthRequest) {
            final token = await SharedPrefHelper.getUserToken();
            if (token != null && token.isNotEmpty) {
              options.headers['Authorization'] = 'Bearer $token';
            }
          }

          handler.next(options);
        },
      ),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );
  }
}
