// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogCacheModel _$CatalogCacheModelFromJson(Map<String, dynamic> json) =>
    CatalogCacheModel(
      data: json['data'] == null
          ? null
          : CatalogDataCacheModel.fromJson(
              json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errors: json['errors'],
      cachedAt: DateTime.parse(json['cachedAt'] as String),
    );

Map<String, dynamic> _$CatalogCacheModelToJson(CatalogCacheModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'message': instance.message,
      'errors': instance.errors,
      'cachedAt': instance.cachedAt.toIso8601String(),
    };
