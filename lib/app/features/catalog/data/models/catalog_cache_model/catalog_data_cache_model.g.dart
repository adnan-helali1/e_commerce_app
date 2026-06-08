// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_data_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogDataCacheModel _$CatalogDataCacheModelFromJson(
        Map<String, dynamic> json) =>
    CatalogDataCacheModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => CatalogItemCacheModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: CatalogSummaryCacheModel.fromJson(
          json['summary'] as Map<String, dynamic>),
      meta:
          CatalogMetaCacheModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogDataCacheModelToJson(
        CatalogDataCacheModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'summary': instance.summary.toJson(),
      'meta': instance.meta.toJson(),
    };
