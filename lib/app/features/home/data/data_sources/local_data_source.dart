import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/core/cache/hive_service.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_cache_model.dart';

class HomeLocalDataSource {
  final HiveService _hiveService;

  HomeLocalDataSource(this._hiveService);

  Future<HomeDashboardCacheModel?> readHomeDashboard() async {
   
    final box = await _hiveService.openBox(CacheKeys.homeBox);
    final entry = box.get(CacheKeys.homeDashboard);

    if (entry is! Map) {
      return null;
    }

    final Map<String, dynamic> casted = _deepCastMap(entry);

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
   
    final box = await _hiveService.openBox(CacheKeys.homeBox);
    await box.put(CacheKeys.homeDashboard, model.toJson());
  }

  Future<void> clearHomeDashboard() async {
   
    final box = await _hiveService.openBox(CacheKeys.homeBox);
    await box.delete(CacheKeys.homeDashboard);
  }
}
