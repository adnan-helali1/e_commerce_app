// import 'dart:async';
// import 'dart:io';
// import 'package:bloc/bloc.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';

// enum ConnectionStatus { connected, disconnected }

// class ConnectivityCubit extends Cubit<ConnectionStatus> {
//   final Connectivity _connectivity;

//   StreamSubscription<List<ConnectivityResult>>? _subscription;
//   Timer? _timer;

//   ConnectivityCubit(this._connectivity) : super(ConnectionStatus.connected) {
//     _init();
//   }

//   void _init() async {
//     // أول check
//     await _checkInternet();

//     // listen لنوع الاتصال
//     _subscription = _connectivity.onConnectivityChanged.listen((_) {
//       _checkInternet(); // 🔥 ignore type → افحص الإنترنت مباشرة
//     });

//     // 🔥 polling ثابت (حل مشاكل المحاكي)
//     _timer = Timer.periodic(const Duration(seconds: 3), (_) {
//       _checkInternet();
//     });
//   }

//   bool _checking = false;

//   Future<void> _checkInternet() async {
//     if (_checking) return;
//     _checking = true;

//     final hasInternet = await _hasInternet();

//     if (hasInternet && state != ConnectionStatus.connected) {
//       emit(ConnectionStatus.connected); //
//     } else if (!hasInternet && state != ConnectionStatus.disconnected) {
//       emit(ConnectionStatus.disconnected); //
//     }

//     _checking = false;
//   }

//   Future<bool> _hasInternet() async {
//     try {
//       final request = await HttpClient()
//           .getUrl(Uri.parse('https://clients3.google.com/generate_204'))
//           .timeout(const Duration(seconds: 2));

//       final response = await request.close();

//       return response.statusCode == 204;
//     } catch (_) {
//       return false;
//     }
//   }

//   @override
//   Future<void> close() {
//     _subscription?.cancel();
//     _timer?.cancel();
//     return super.close();
//   }
// }
