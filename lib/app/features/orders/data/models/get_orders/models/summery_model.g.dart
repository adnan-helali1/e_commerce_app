// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummeryModel _$SummeryModelFromJson(Map<String, dynamic> json) => SummeryModel(
      total: (json['total_buy'] as num).toDouble(),
      totalSell: (json['total_sell'] as num).toDouble(),
    );

Map<String, dynamic> _$SummeryModelToJson(SummeryModel instance) =>
    <String, dynamic>{
      'total_buy': instance.total,
      'total_sell': instance.totalSell,
    };
