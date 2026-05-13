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
      // await _addAuthorizationHeader(dio);
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
 /// ===============================
  /// Add token from SharedPreferences
  /// ===============================
  // static Future<void> _addAuthorizationHeader(Dio dio) async {
  //   final token = await SharedPrefHelper.getSecuredString(
  //     SharedPrefKeys.userToken,
  //   );

  //   if (token.isNotEmpty) {
  //     dio.options.headers['Authorization'] = 'Bearer $token';
  //   }
  // }

  // /// ===============================
  // /// Set token after login
  // /// ===============================
  // static void setTokenAfterLogin(String token) {
  //   if (_dio == null) return;

  //   _dio!.options.headers['Authorization'] = 'Bearer $token';
  // }

  // /// ===============================
  // /// Clear token on logout
  // /// ===============================
  // static void clearToken() {
  //   _dio?.options.headers.remove('Authorization');
  // }
