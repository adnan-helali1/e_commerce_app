import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_item_cache_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_meta_cache_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_summary_cache_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_meta_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_summary_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_cache_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CatalogCacheModel {
  final List<CatalogItemCacheModel> data;
  final CatalogSummaryCacheModel summary;
  final CatalogMetaCacheModel meta;
  final DateTime cachedAt;

  CatalogCacheModel({
    required this.data,
    required this.summary,
    required this.meta,
    required this.cachedAt,
  });

  factory CatalogCacheModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogCacheModelToJson(this);

  /// 🔥 API → CACHE
  factory CatalogCacheModel.fromResponse(CatalogResponse model) {
    return CatalogCacheModel(
      data:
          model.data.map((e) => CatalogItemCacheModel.fromResponse(e)).toList(),
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
      cachedAt: DateTime.now(),
    );
  }

  /// 🔥 CACHE → UI MODEL
  CatalogResponse toResponse() {
    return CatalogResponse(
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
