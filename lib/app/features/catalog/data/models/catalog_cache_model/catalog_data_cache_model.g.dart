// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_data_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogDataCacheModel _$CatalogDataCacheModelFromJson(
        Map<String, dynamic> json) =>
    CatalogDataCacheModel(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => CatalogItemCacheModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      perPage: (json['perPage'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CatalogDataCacheModelToJson(
        CatalogDataCacheModel instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'perPage': instance.perPage,
      'lastPage': instance.lastPage,
      'total': instance.total,
    };
