import 'package:B2B/app/core/images/selected_image.dart';
import 'package:dio/dio.dart';

class RegisterRequestBody {
  final String name; // Store name
  final String ownerName;
  final String email;
  final String phone;
  final String password;
  final String passwordConfirmation;
  final String address;
  final SelectedImage image;

  RegisterRequestBody({
    required this.name,
    required this.ownerName,
    required this.email,
    required this.phone,
    required this.password,
    required this.passwordConfirmation,
    required this.address,
    required this.image,
  });

  Future<FormData> toFormData() async => FormData.fromMap({
        'name': name,
        'owner_name': ownerName,
        'email': email,
        'phone': phone,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'address': address,
        'image': await image.toMultipartFile(),
      });
}
