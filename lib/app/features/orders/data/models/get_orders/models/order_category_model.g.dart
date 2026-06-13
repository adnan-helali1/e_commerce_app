// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCategoryModel _$OrderCategoryModelFromJson(Map<String, dynamic> json) =>
    OrderCategoryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
      imageUrl: json['image_url'] as String?,
      media: json['media'] as List<dynamic>,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$OrderCategoryModelToJson(OrderCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'image_url': instance.imageUrl,
      'media': instance.media,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
