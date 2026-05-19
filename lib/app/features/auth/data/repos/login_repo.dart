import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/auth/data/models/login_request_body.dart';
import 'package:B2B/app/features/auth/data/models/login_response.dart';
import 'package:flutter/material.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      debugPrint('LoginRepo login error: $error');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<void>> logout() async {
    try {
      await _apiService.logout();
      return ApiResult.success(null);
    } catch (error) {
      debugPrint('LoginRepo logout error: $error');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
