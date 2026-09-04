import 'dart:async';

import 'package:B2B/app/features/auth/data/auth_session_notifier.dart';
import 'package:B2B/app/features/auth/data/repos/auth_repository.dart';
import 'package:bloc/bloc.dart';

enum AuthStatus {
  restoring,
  authenticated,
  unauthenticated,
  sessionExpired,
  accountInactive,
}

class AuthCubit extends Cubit<AuthStatus> {
  AuthCubit(this._authRepository, AuthSessionNotifier notifier)
      : super(AuthStatus.restoring) {
    _subscription = notifier.stream.listen(_onSessionStatus);
  }

  final AuthRepository _authRepository;
  late final StreamSubscription<AuthSessionStatus> _subscription;

  Future<void> restoreSession() async {
    emit(AuthStatus.restoring);
    try {
      await _authRepository.restoreSession();
    } catch (_) {
      emit(AuthStatus.unauthenticated);
    }
  }

  void _onSessionStatus(AuthSessionStatus status) {
    emit(switch (status) {
      AuthSessionStatus.authenticated => AuthStatus.authenticated,
      AuthSessionStatus.unauthenticated => AuthStatus.unauthenticated,
      AuthSessionStatus.sessionExpired => AuthStatus.sessionExpired,
      AuthSessionStatus.accountInactive => AuthStatus.accountInactive,
    });
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}
