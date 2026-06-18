import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:B2B/app/features/profile/data/models/profile_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_cache_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfileCacheModel {
  final ProfileCacheData? data;
  final String? message;
  final dynamic errors;
  final DateTime cachedAt;

  ProfileCacheModel({
    this.data,
    this.message,
    this.errors,
    required this.cachedAt,
  });

  factory ProfileCacheModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProfileCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileCacheModelToJson(this);

  factory ProfileCacheModel.fromResponse(
    GetProfileResponse response, {
    DateTime? cachedAt,
  }) {
    return ProfileCacheModel(
      data: ProfileCacheData.fromResponse(response.data),
      message: response.message,
      errors: response.errors,
      cachedAt: cachedAt ?? DateTime.now(),
    );
  }

  GetProfileResponse toResponse() {
    return GetProfileResponse(
      data: data!.toResponse(),
      message: message ?? '',
      errors: errors,
    );
  }
}

@JsonSerializable()
class ProfileCacheData {
  final int? id;
  final String? name;
  final String? ownerName;
  final String? phone;
  final String? email;
  final String? address;
  final String? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ProfileCacheData({
    this.id,
    this.name,
    this.ownerName,
    this.phone,
    this.email,
    this.address,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory ProfileCacheData.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProfileCacheDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileCacheDataToJson(this);

  factory ProfileCacheData.fromResponse(
    ProfileModel profile,
  ) {
    return ProfileCacheData(
      id: profile.id,
      name: profile.name,
      ownerName: profile.ownerName,
      phone: profile.phone,
      email: profile.email,
      address: profile.address,
      status: profile.status,
      createdAt: profile.createdAt,
      updatedAt: profile.updatedAt,
    );
  }

  ProfileModel toResponse() {
    return ProfileModel(
      id: id!,
      name: name!,
      ownerName: ownerName!,
      phone: phone!,
      email: email!,
      address: address!,
      status: status!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
    );
  }
}
