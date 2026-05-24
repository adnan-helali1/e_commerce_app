import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/core/cache/hive_service.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_cache_model.dart';
import 'package:flutter/foundation.dart';

class HomeLocalDataSource {
  final HiveService _hiveService;

  HomeLocalDataSource(this._hiveService);

  Future<HomeDashboardCacheModel?> readHomeDashboard() async {
    debugPrint(
        '[HomeCache] readHomeDashboard -> opening box ${CacheKeys.homeBox}');
    final box = await _hiveService.openBox(CacheKeys.homeBox);
    final entry = box.get(CacheKeys.homeDashboard);

    if (entry is! Map) {
      debugPrint(
          '[HomeCache] readHomeDashboard -> MISS (${CacheKeys.homeDashboard})');
      return null;
    }

    debugPrint(
        '[HomeCache] readHomeDashboard -> HIT (${CacheKeys.homeDashboard})');

    return HomeDashboardCacheModel.fromJson(Map<String, dynamic>.from(entry));
  }

  Future<void> saveHomeDashboard(HomeDashboardCacheModel model) async {
    debugPrint(
        '[HomeCache] saveHomeDashboard -> writing key ${CacheKeys.homeDashboard}');
    final box = await _hiveService.openBox(CacheKeys.homeBox);
    await box.put(CacheKeys.homeDashboard, model.toJson());
    debugPrint('[HomeCache] saveHomeDashboard -> DONE');
  }

  Future<void> clearHomeDashboard() async {
    debugPrint(
        '[HomeCache] clearHomeDashboard -> deleting key ${CacheKeys.homeDashboard}');
    final box = await _hiveService.openBox(CacheKeys.homeBox);
    await box.delete(CacheKeys.homeDashboard);
    debugPrint('[HomeCache] clearHomeDashboard -> DONE');
  }
}
