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
