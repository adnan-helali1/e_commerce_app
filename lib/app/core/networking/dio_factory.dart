import 'package:B2B/app/core/networking/api_constans.dart';
import 'package:dio/dio.dart';

class DioFactory {
  DioFactory._();

  static Dio createDio() => Dio(
        BaseOptions(
          baseUrl: ApiConstants.apiBaseUrl,
          connectTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 15),
          headers: {'Accept': 'application/json'},
        ),
      );
}
