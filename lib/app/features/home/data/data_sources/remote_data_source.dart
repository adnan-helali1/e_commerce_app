import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';

class HomeRemoteDataSource {
  final ApiService _apiService;

  HomeRemoteDataSource(this._apiService);

  Future<HomeDashboardResponse> getHomeDashboard() {
    return _apiService.getHomeDashboard();
  }
}
