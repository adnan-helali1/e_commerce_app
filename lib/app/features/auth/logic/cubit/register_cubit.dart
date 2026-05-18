import 'package:B2B/app/core/helpers/validation_helper.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/auth/data/models/register_request_body.dart';
import 'package:B2B/app/features/auth/data/repos/register_repo.dart';
import 'package:B2B/app/features/auth/logic/cubit/register_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  final formKey = GlobalKey<FormState>();

  void validateForm({
    required String storeName,
    required String ownerName,
    required String email,
    required String phone,
    required String password,
    required String passwordConfirmation,
    required String address,
  }) {
    final storeNameError = ValidationHelper.validateStoreName(storeName);
    final ownerNameError = ValidationHelper.validateName(
      ownerName,
      fieldName: 'Owner name',
    );
    final phoneError = ValidationHelper.validatePhone(phone);
    final emailError = ValidationHelper.validateEmail(email);
    final passwordError = ValidationHelper.validatePassword(password);
    final confirmPasswordError = ValidationHelper.validatePasswordMatch(
      password,
      passwordConfirmation,
    );
    final addressError = ValidationHelper.validateAddress(address);

    final isValid = storeNameError == null &&
        ownerNameError == null &&
        phoneError == null &&
        emailError == null &&
        passwordError == null &&
        confirmPasswordError == null &&
        addressError == null;

    emit(RegisterState.initial(isFormValid: isValid));
  }

  void emitRegisterStates({
    required String storeName,
    required String ownerName,
    required String email,
    required String phone,
    required String password,
    required String passwordConfirmation,
    required String address,
  }) async {
    emit(const RegisterState.loading());

    final response = await _registerRepo.register(
      RegisterRequestBody(
        name: storeName,
        ownerName: ownerName,
        email: email,
        phone: phone,
        password: password,
        passwordConfirmation: passwordConfirmation,
        address: address,
      ),
    );

    response.when(
      success: (registerResponse) async {
        emit(RegisterState.success(registerResponse));
      },
      failure: (error) {
        emit(RegisterState.failure(
          error: error.apiErrorModel.message ?? 'Registration failed',
        ));
      },
    );
  }
}
