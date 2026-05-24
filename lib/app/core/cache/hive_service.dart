import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  Future<Box<dynamic>> openBox(String boxName) async {
    if (Hive.isBoxOpen(boxName)) {
      debugPrint('[HiveService] openBox -> reuse open box: $boxName');
      return Hive.box<dynamic>(boxName);
    }

    debugPrint('[HiveService] openBox -> opening box: $boxName');
    return Hive.openBox<dynamic>(boxName);
  }
}
