import 'package:B2B/app/core/networking/api_constans.dart';
import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:B2B/app/features/profile/data/models/update_profile_request.dart';
import 'package:dio/dio.dart';

class UpdateProfileRemoteDataSource {
  final Dio _dio;

  UpdateProfileRemoteDataSource(this._dio);

  Future<GetProfileResponse> updateProfile(
    UpdateProfileRequest request, {
    ProgressCallback? onSendProgress,
  }) async {
    final response = await _dio.post<Map<String, dynamic>>(
      ApiConstants.profile,
      data: await request.toFormData(),
      onSendProgress: onSendProgress,
    );
    return GetProfileResponse.fromJson(response.data!);
  }
}
