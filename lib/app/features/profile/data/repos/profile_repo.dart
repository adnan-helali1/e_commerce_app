import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';

abstract class ProfileRepo {
  Future<GetProfileResponse?> getCachedProfile();

  Future<DateTime?> getCachedProfileAt();

  Future<void> clearProfile();

  bool shouldRefreshProfile(DateTime? cachedAt);

  Future<ApiResult<GetProfileResponse>> getProfile({
    bool forceRefresh = false,
  });
}
