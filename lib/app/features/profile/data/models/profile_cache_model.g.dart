// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileCacheModel _$ProfileCacheModelFromJson(Map<String, dynamic> json) =>
    ProfileCacheModel(
      data: json['data'] == null
          ? null
          : ProfileCacheData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errors: json['errors'],
      cachedAt: DateTime.parse(json['cachedAt'] as String),
    );

Map<String, dynamic> _$ProfileCacheModelToJson(ProfileCacheModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'message': instance.message,
      'errors': instance.errors,
      'cachedAt': instance.cachedAt.toIso8601String(),
    };

ProfileCacheData _$ProfileCacheDataFromJson(Map<String, dynamic> json) =>
    ProfileCacheData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      ownerName: json['ownerName'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ProfileCacheDataToJson(ProfileCacheData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ownerName': instance.ownerName,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
