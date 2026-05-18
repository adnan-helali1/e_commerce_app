import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String name; // Store name
  @JsonKey(name: 'owner_name')
  final String ownerName;
  final String email;
  final String phone;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  final String address;

  RegisterRequestBody({
    required this.name,
    required this.ownerName,
    required this.email,
    required this.phone,
    required this.password,
    required this.passwordConfirmation,
    required this.address,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
