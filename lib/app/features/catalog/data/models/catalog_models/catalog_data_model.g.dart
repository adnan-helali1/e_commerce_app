// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogData _$CatalogDataFromJson(Map<String, dynamic> json) => _CatalogData(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => CatalogItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      perPage: (json['per_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$CatalogDataToJson(_CatalogData instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'per_page': instance.perPage,
      'last_page': instance.lastPage,
      'total': instance.total,
    };
