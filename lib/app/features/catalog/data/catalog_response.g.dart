// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogResponse _$CatalogResponseFromJson(Map<String, dynamic> json) =>
    _CatalogResponse(
      data: CatalogData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      errors: json['errors'],
    );

Map<String, dynamic> _$CatalogResponseToJson(_CatalogResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'errors': instance.errors,
    };
