import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_item_cache_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'catalog_data_cache_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CatalogDataCacheModel {
  final int? currentPage;
  final List<CatalogItemCacheModel>? data;
  final int? perPage;
  final int? lastPage;
  final int? total;

  CatalogDataCacheModel({
    this.currentPage,
    this.data,
    this.perPage,
    this.lastPage,
    this.total,
  });

  factory CatalogDataCacheModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogDataCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogDataCacheModelToJson(this);

  factory CatalogDataCacheModel.fromResponse(
    CatalogData model,
  ) {
    return CatalogDataCacheModel(
      currentPage: model.currentPage,
      data: model.data.map(CatalogItemCacheModel.fromResponse).toList(),
      perPage: model.perPage,
      lastPage: model.lastPage,
      total: model.total,
    );
  }

  CatalogData toResponse() {
    return CatalogData(
      currentPage: currentPage!,
      data: data!.map((e) => e.toResponse()).toList(),
      perPage: perPage!,
      lastPage: lastPage!,
      total: total!,
    );
  }
}
