// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_offer_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOfferRequestBody _$AddOfferRequestBodyFromJson(Map<String, dynamic> json) =>
    AddOfferRequestBody(
      sellPrice: json['sell_price'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$AddOfferRequestBodyToJson(
        AddOfferRequestBody instance) =>
    <String, dynamic>{
      'sell_price': instance.sellPrice,
      'is_active': instance.isActive,
    };
