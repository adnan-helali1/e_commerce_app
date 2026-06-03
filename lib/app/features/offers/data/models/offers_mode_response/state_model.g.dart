// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Stats _$StatsFromJson(Map<String, dynamic> json) => _Stats(
      totalOffers: (json['total_offers'] as num).toInt(),
      availableOffers: (json['available_offers'] as num).toInt(),
    );

Map<String, dynamic> _$StatsToJson(_Stats instance) => <String, dynamic>{
      'total_offers': instance.totalOffers,
      'available_offers': instance.availableOffers,
    };
