import 'package:B2B/app/core/helpers/validation_helper.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/auth/data/models/register_request_body.dart';
import 'package:B2B/app/features/auth/data/repos/register_repo.dart';
import 'package:B2B/app/features/auth/logic/register/register_state.dart';
import 'package:B2B/l10n/app_localizations.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  final formKey = GlobalKey<FormState>();

  void validateForm({
    required AppLocalizations l10n,
    required String storeName,
    required String ownerName,
    required String email,
    required String phone,
    required String password,
    required String passwordConfirmation,
    required String address,
  }) {
    final storeNameError =
        ValidationHelper.validateStoreName(storeName, l10n);
    final ownerNameError = ValidationHelper.validateName(
      ownerName,
      l10n,
      fieldName: l10n.ownerNameField,
    );
    final phoneError = ValidationHelper.validatePhone(phone, l10n);
    final emailError = ValidationHelper.validateEmail(email, l10n);
    final passwordError = ValidationHelper.validatePassword(password, l10n);
    final confirmPasswordError = ValidationHelper.validatePasswordMatch(
      password,
      passwordConfirmation,
      l10n,
    );
    final addressError = ValidationHelper.validateAddress(address, l10n);

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
