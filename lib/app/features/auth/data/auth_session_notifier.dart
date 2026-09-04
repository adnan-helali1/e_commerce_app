import 'dart:async';

enum AuthSessionStatus {
  authenticated,
  unauthenticated,
  sessionExpired,
  accountInactive,
}

class AuthSessionNotifier {
  final _controller = StreamController<AuthSessionStatus>.broadcast();

  Stream<AuthSessionStatus> get stream => _controller.stream;

  void emit(AuthSessionStatus status) => _controller.add(status);

  Future<void> dispose() => _controller.close();
}
