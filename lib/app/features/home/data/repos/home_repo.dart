import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';

abstract class HomeRepo {
  Future<HomeDashboardResponse?> getCachedHomeDashboard();

  Future<DateTime?> getCachedHomeDashboardAt();

  bool shouldRefreshHomeDashboard(DateTime? cachedAt);

  Future<ApiResult<HomeDashboardResponse>> getHomeDashboard({
    bool forceRefresh = false,
  });

  /// Clear cached home dashboard data
  Future<void> clearHomeDashboard();
}
