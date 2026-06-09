import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_item_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_meta_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_summary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_data_model.freezed.dart';
part 'catalog_data_model.g.dart';

@freezed
abstract class CatalogData with _$CatalogData {
  const factory CatalogData({
    required List<CatalogItem> data,
    required CatalogSummary summary,
    required CatalogMeta meta,
  }) = _CatalogData;

  factory CatalogData.fromJson(Map<String, dynamic> json) =>
      _$CatalogDataFromJson(json);
}
