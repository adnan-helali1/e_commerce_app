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
  int? id;
  String? name;
  String? email;
  String? phone;
  String? address;
  @JsonKey(name: 'owner_name')
  String? ownerName;
  String? token;
  @JsonKey(name: 'token_type')
  String? tokenType;

  RegisterUserData({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.ownerName,
    this.token,
    this.tokenType,
  });

  factory RegisterUserData.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserDataFromJson(json);
}
