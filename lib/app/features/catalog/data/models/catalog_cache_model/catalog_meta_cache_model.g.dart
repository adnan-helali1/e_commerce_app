// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_meta_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogMetaCacheModel _$CatalogMetaCacheModelFromJson(
        Map<String, dynamic> json) =>
    CatalogMetaCacheModel(
      currentPage: (json['current_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$CatalogMetaCacheModelToJson(
        CatalogMetaCacheModel instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'total': instance.total,
    };
