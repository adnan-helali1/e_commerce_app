import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_item_cache_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_summary_cache_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_meta_cache_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_data_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_meta_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_summary_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_data_cache_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CatalogDataCacheModel {
  final List<CatalogItemCacheModel> data;
  final CatalogSummaryCacheModel summary;
  final CatalogMetaCacheModel meta;

  CatalogDataCacheModel({
    required this.data,
    required this.summary,
    required this.meta,
  });

  /// JSON
  factory CatalogDataCacheModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogDataCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogDataCacheModelToJson(this);

  /// 🔥 FROM API → CACHE
  factory CatalogDataCacheModel.fromResponse(
    CatalogData model,
  ) {
    return CatalogDataCacheModel(
      data: (model.data ?? [])
          .map((e) => CatalogItemCacheModel.fromResponse(e))
          .toList(),
      summary: CatalogSummaryCacheModel(
        totalProducts: model.summary.totalProducts,
        activeProducts: model.summary.activeProducts,
        totalProfit: model.summary.totalProfit,
      ),
      meta: CatalogMetaCacheModel(
        currentPage: model.meta.currentPage,
        lastPage: model.meta.lastPage,
        perPage: model.meta.perPage,
        total: model.meta.total,
      ),
    );
  }

  /// 🔥 CACHE → DOMAIN (UI)
  CatalogData toResponse() {
    return CatalogData(
      data: data.map((e) => e.toResponse()).toList(),
      summary: CatalogSummary(
        totalProducts: summary.totalProducts,
        activeProducts: summary.activeProducts,
        totalProfit: summary.totalProfit,
      ),
      meta: CatalogMeta(
        currentPage: meta.currentPage,
        lastPage: meta.lastPage,
        perPage: meta.perPage,
        total: meta.total,
      ),
    );
  }
}
