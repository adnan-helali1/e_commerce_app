// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProfileRequest _$UpdateProfileRequestFromJson(
        Map<String, dynamic> json) =>
    _UpdateProfileRequest(
      name: json['name'] as String?,
      ownerName: json['owner_name'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$UpdateProfileRequestToJson(
        _UpdateProfileRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner_name': instance.ownerName,
      'phone': instance.phone,
      'address': instance.address,
    };
