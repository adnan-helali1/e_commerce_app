// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetProfileResponse _$GetProfileResponseFromJson(Map<String, dynamic> json) =>
    _GetProfileResponse(
      data: ProfileModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      errors: json['errors'],
    );

Map<String, dynamic> _$GetProfileResponseToJson(_GetProfileResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'errors': instance.errors,
    };
