import 'package:B2B/app/core/networking/api_service.dart';

import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:B2B/app/features/profile/data/models/update_profile_request.dart';

class UpdateProfileRemoteDataSource {
  final ApiService _apiService;

  UpdateProfileRemoteDataSource(this._apiService);

  Future<GetProfileResponse> updateProfile(UpdateProfileRequest request) {
    return _apiService.updateProfile(request.toJson());
  }
}
