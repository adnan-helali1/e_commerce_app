// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogData _$CatalogDataFromJson(Map<String, dynamic> json) => _CatalogData(
      data: (json['data'] as List<dynamic>)
          .map((e) => CatalogItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: CatalogSummary.fromJson(json['summary'] as Map<String, dynamic>),
      meta: CatalogMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CatalogDataToJson(_CatalogData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'summary': instance.summary,
      'meta': instance.meta,
    };
