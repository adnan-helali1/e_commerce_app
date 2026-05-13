import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  String? errors;

  LoginResponse({this.message, this.userData, this.errors});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'token_type')
  String? tokenType;
  @JsonKey(name: 'store')
  StoreData? storeData;

  UserData({this.token, this.tokenType, this.storeData});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@JsonSerializable()
class StoreData {
  int? id;
  String? name;
  String? email;

  StoreData({this.id, this.name, this.email});

  factory StoreData.fromJson(Map<String, dynamic> json) =>
      _$StoreDataFromJson(json);
}
