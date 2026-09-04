import 'package:B2B/app/features/auth/data/auth_session_notifier.dart';

class SessionExpiredException implements Exception {
  const SessionExpiredException(this.status);

  final AuthSessionStatus status;
}
