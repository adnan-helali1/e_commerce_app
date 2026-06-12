// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_offers_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActiveOffersMeta _$ActiveOffersMetaFromJson(Map<String, dynamic> json) =>
    _ActiveOffersMeta(
      currentPage: (json['current_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$ActiveOffersMetaToJson(_ActiveOffersMeta instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'total': instance.total,
    };
