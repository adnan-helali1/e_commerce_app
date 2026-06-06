// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_offer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddOfferResponse _$AddOfferResponseFromJson(Map<String, dynamic> json) =>
    _AddOfferResponse(
      data: AddOfferData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      errors: json['errors'],
    );

Map<String, dynamic> _$AddOfferResponseToJson(_AddOfferResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'errors': instance.errors,
    };
