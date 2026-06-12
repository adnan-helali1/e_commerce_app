// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_offers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActiveOffersResponse _$ActiveOffersResponseFromJson(
        Map<String, dynamic> json) =>
    _ActiveOffersResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => ActiveOfferItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary:
          ActiveOffersSummary.fromJson(json['summary'] as Map<String, dynamic>),
      meta: ActiveOffersMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveOffersResponseToJson(
        _ActiveOffersResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'summary': instance.summary,
      'meta': instance.meta,
    };
