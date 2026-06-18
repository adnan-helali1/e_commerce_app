import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';

class ProfileRemoteDataSource {
  final ApiService _apiService;

  ProfileRemoteDataSource(this._apiService);

  Future<GetProfileResponse> getProfile() {
    return _apiService.getProfile();
  }
}
