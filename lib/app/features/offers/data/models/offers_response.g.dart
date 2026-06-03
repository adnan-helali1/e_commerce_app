// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OffersResponse _$OffersResponseFromJson(Map<String, dynamic> json) =>
    _OffersResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => OfferData.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: Stats.fromJson(json['stats'] as Map<String, dynamic>),
      pagination:
          Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      message: json['message'] as String,
      errors: json['errors'],
    );

Map<String, dynamic> _$OffersResponseToJson(_OffersResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'stats': instance.stats,
      'pagination': instance.pagination,
      'message': instance.message,
      'errors': instance.errors,
    };
