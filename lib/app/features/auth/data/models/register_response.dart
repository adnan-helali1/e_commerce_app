import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  String? message;
  @JsonKey(name: 'data')
  RegisterUserData? userData;
  String? errors;

  RegisterResponse({this.message, this.userData, this.errors});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@JsonSerializable()
class RegisterUserData {
  String? token;
  @JsonKey(name: 'token_type')
  String? tokenType;
  RegisterStoreData? store;

  RegisterUserData({
    this.token,
    this.tokenType,
    this.store,
  });

  factory RegisterUserData.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserDataFromJson(json);
}

@JsonSerializable()
class RegisterStoreData {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? address;
  @JsonKey(name: 'owner_name')
  String? ownerName;
  @JsonKey(name: 'image_url')
  String? imageUrl;

  RegisterStoreData({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.ownerName,
    this.imageUrl,
  });

  factory RegisterStoreData.fromJson(Map<String, dynamic> json) =>
      _$RegisterStoreDataFromJson(json);
}
