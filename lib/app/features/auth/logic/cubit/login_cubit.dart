import 'package:B2B/app/core/helpers/shared_pref_helper.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/auth/data/models/login_request_body.dart';
import 'package:B2B/app/features/auth/data/repos/login_repo.dart';
import 'package:B2B/app/features/auth/logic/cubit/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();

  void emitLoginStates({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: email,
        password: password,
      ),
    );
    response.when(
      success: (loginResponse) async {
        final token = loginResponse.userData?.token;
        if (token != null && token.isNotEmpty && rememberMe) {
          await SharedPrefHelper.setUserToken(token);
        }
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.failure(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  /// Check if user is logged in
  Future<bool> checkIfLoggedInUser() async {
    final userToken = await SharedPrefHelper.getUserToken();
    return userToken != null && userToken.isNotEmpty;
  }
}
