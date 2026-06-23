import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/profile/data/data_sources/profile_local_data_source.dart';
import 'package:B2B/app/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:B2B/app/features/profile/data/models/profile_cache_model.dart';
import 'package:B2B/app/features/profile/data/repos/profile_repo.dart';

class ProfileRepoImpl implements ProfileRepo {
  final ProfileLocalDataSource _local;
  final ProfileRemoteDataSource _remote;

  bool _isLoading = false;

  ProfileRepoImpl(
    this._local,
    this._remote,
  );

  @override
  Future<GetProfileResponse?> getCachedProfile() async {
    final cached = await _local.read();

    return cached?.toResponse();
  }

  @override
  Future<ApiResult<GetProfileResponse>> getProfile({
    bool forceRefresh = false,
  }) async {
    try {
      /// CACHE FIRST
      if (!forceRefresh) {
        final cached = await getCachedProfile();

        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      /// PREVENT DUPLICATE REQUESTS
      if (_isLoading) {
        final cached = await getCachedProfile();

        if (cached != null) {
          return ApiResult.success(cached);
        }
      }

      _isLoading = true;

      /// API
      final response = await _remote.getProfile();

      /// CACHE
      final cacheModel = ProfileCacheModel.fromResponse(
        response,
      );

      await _local.save(cacheModel);

      return ApiResult.success(response);
    } catch (error) {
      /// FALLBACK CACHE
      final cached = await getCachedProfile();

      if (cached != null) {
        return ApiResult.success(cached);
      }

      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    } finally {
      _isLoading = false;
    }
  }
}
