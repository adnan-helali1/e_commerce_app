// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogCacheModel _$CatalogCacheModelFromJson(Map<String, dynamic> json) =>
    CatalogCacheModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => CatalogItemCacheModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: CatalogSummaryCacheModel.fromJson(
          json['summary'] as Map<String, dynamic>),
      meta:
          CatalogMetaCacheModel.fromJson(json['meta'] as Map<String, dynamic>),
      cachedAt: DateTime.parse(json['cachedAt'] as String),
    );

Map<String, dynamic> _$CatalogCacheModelToJson(CatalogCacheModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'summary': instance.summary.toJson(),
      'meta': instance.meta.toJson(),
      'cachedAt': instance.cachedAt.toIso8601String(),
    };
