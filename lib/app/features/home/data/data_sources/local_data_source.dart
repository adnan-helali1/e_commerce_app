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

    // Hive may return Map<dynamic, dynamic> and nested structures may contain
    // Map<dynamic, dynamic> as well. Convert recursively to Map<String, dynamic>.
    Map<String, dynamic> casted = _deepCastMap(entry as Map);

    return HomeDashboardCacheModel.fromJson(casted);
  }

  Map<String, dynamic> _deepCastMap(Map src) {
    final Map<String, dynamic> result = <String, dynamic>{};
    src.forEach((key, value) {
      final k = key.toString();
      if (value is Map) {
        result[k] = _deepCastMap(value);
      } else if (value is List) {
        result[k] = _deepCastList(value);
      } else {
        result[k] = value;
      }
    });
    return result;
  }

  List<dynamic> _deepCastList(List src) {
    return src.map((e) {
      if (e is Map) return _deepCastMap(e);
      if (e is List) return _deepCastList(e);
      return e;
    }).toList(growable: false);
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
