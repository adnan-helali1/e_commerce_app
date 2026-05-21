import 'package:B2B/app/core/networking/api_error_handler.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:flutter/material.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<HomeDashboardResponse>> getHomeDashboard() async {
    try {
      final response = await _apiService.getHomeDashboard();
      return ApiResult.success(response);
    } catch (error) {
      debugPrint('HomeRepo getHomeDashboard error: $error');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
