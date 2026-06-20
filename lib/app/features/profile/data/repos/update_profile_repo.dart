import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';

import 'package:B2B/app/features/profile/data/data_sources/update_profile_remote_data_source.dart';
import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:B2B/app/features/profile/data/models/update_profile_request.dart';

class UpdateProfileRepo {
  final UpdateProfileRemoteDataSource _remote;
  UpdateProfileRepo(this._remote);

  Future<ApiResult<GetProfileResponse>> updateProfile(
      UpdateProfileRequest request) async {
    try {
      final response = await _remote.updateProfile(request);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
