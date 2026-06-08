import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_data_model.freezed.dart';
part 'catalog_data_model.g.dart';

@freezed
abstract class CatalogData with _$CatalogData {
  const factory CatalogData({
    @JsonKey(name: 'current_page') required int currentPage,
    required List<CatalogItem> data,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'last_page') required int lastPage,
    required int total,
  }) = _CatalogData;

  factory CatalogData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogDataFromJson(json);
}
