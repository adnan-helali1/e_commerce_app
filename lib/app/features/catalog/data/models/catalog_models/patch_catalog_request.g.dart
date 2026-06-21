// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_catalog_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PatchCatalogRequest _$PatchCatalogRequestFromJson(Map<String, dynamic> json) =>
    _PatchCatalogRequest(
      sellPrice: json['sell_price'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$PatchCatalogRequestToJson(
        _PatchCatalogRequest instance) =>
    <String, dynamic>{
      'sell_price': instance.sellPrice,
      'is_active': instance.isActive,
    };
