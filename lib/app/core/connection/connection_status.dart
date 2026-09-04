import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ConnectionStatus { initial, connected, disconnected }

class ConnectivityCubit extends Cubit<ConnectionStatus> {
  ConnectivityCubit({
    Connectivity? connectivity,
    Stream<List<ConnectivityResult>>? changes,
    Future<List<ConnectivityResult>> Function()? checkConnectivity,
  })  : _connectivity = connectivity ?? Connectivity(),
        _checkConnectivity = checkConnectivity,
        super(ConnectionStatus.initial) {
    _subscription =
        (changes ?? _connectivity.onConnectivityChanged).listen(_updateStatus);
    unawaited(checkNow());
  }

  final Connectivity _connectivity;
  final Future<List<ConnectivityResult>> Function()? _checkConnectivity;
  StreamSubscription<List<ConnectivityResult>>? _subscription;

  Future<void> checkNow() async {
    final results =
        await (_checkConnectivity?.call() ?? _connectivity.checkConnectivity());
    _updateStatus(results);
  }

  void _updateStatus(List<ConnectivityResult> results) {
    if (isClosed) return;
    final next = results.isEmpty || results.contains(ConnectivityResult.none)
        ? ConnectionStatus.disconnected
        : ConnectionStatus.connected;
    if (state != next) emit(next);
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
