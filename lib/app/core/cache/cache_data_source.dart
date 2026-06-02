import 'package:B2B/app/core/cache/hive_service.dart';

class CacheDataSource<T> {
  final HiveService _hiveService;

  CacheDataSource(this._hiveService);

  Future<T?> read({
    required String boxKey,
    required String dataKey,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    final box = await _hiveService.openBox(boxKey);
    final entry = box.get(dataKey);

    if (entry is! Map) return null;

    final casted = _deepCastMap(entry);
    return fromJson(casted);
  }

  Future<void> save({
    required String boxKey,
    required String dataKey,
    required Map<String, dynamic> data,
  }) async {
    final box = await _hiveService.openBox(boxKey);
    await box.put(dataKey, data);
  }

  Future<void> clear({
    required String boxKey,
    required String dataKey,
  }) async {
    final box = await _hiveService.openBox(boxKey);
    await box.delete(dataKey);
  }

  // 🔥 reusable deep cast
  Map<String, dynamic> _deepCastMap(Map src) {
    final result = <String, dynamic>{};
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
}
