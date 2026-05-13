import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/auth/data/models/register_request_body.dart';
import 'package:B2B/app/features/auth/data/models/register_response.dart';
import 'package:flutter/material.dart';

class RegisterRepo {
  final ApiService _apiService;

  RegisterRepo(this._apiService);

  Future<ApiResult<RegisterResponse>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await _apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      debugPrint('RegisterRepo register error: $error');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
