import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';

import 'package:B2B/app/features/profile/data/data_sources/update_profile_remote_data_source.dart';
import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:B2B/app/features/profile/data/models/update_profile_request.dart';
import 'package:B2B/app/features/profile/data/data_sources/profile_local_data_source.dart';
import 'package:B2B/app/features/profile/data/models/profile_cache_model.dart';
import 'package:dio/dio.dart';

class UpdateProfileRepo {
  final UpdateProfileRemoteDataSource _remote;
  final ProfileLocalDataSource _local;
  UpdateProfileRepo(this._remote, this._local);

  Future<ApiResult<GetProfileResponse>> updateProfile(
    UpdateProfileRequest request, {
    ProgressCallback? onSendProgress,
  }) async {
    try {
      final response = await _remote.updateProfile(
        request,
        onSendProgress: onSendProgress,
      );
      await _local.save(ProfileCacheModel.fromResponse(response));

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
