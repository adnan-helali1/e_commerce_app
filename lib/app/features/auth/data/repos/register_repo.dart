import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/auth/data/models/register_request_body.dart';
import 'package:B2B/app/features/auth/data/models/register_response.dart';
import 'package:B2B/app/features/auth/data/repos/auth_repository.dart';
import 'package:dio/dio.dart';

class RegisterRepo {
  final AuthRepository _authRepository;

  RegisterRepo(this._authRepository);

  Future<ApiResult<RegisterResponse>> register(
    RegisterRequestBody registerRequestBody, {
    ProgressCallback? onSendProgress,
  }) async {
    try {
      final response = await _authRepository.register(
        registerRequestBody,
        onSendProgress: onSendProgress,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
