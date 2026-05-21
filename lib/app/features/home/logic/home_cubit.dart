import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:B2B/app/features/home/data/repos/home_repo.dart';
import 'package:B2B/app/features/home/logic/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void emitHomeStates() async {
    emit(const HomeState.loading());
    final response = await _homeRepo.getHomeDashboard();
    response.when(
      success: (HomeDashboardResponse) async {
        emit(HomeState.success(HomeDashboardResponse));
      },
      failure: (error) {
        emit(HomeState.failure(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}





/*import 'package:B2B/app/core/helpers/shared_pref_helper.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/auth/data/models/login_request_body.dart';
import 'package:B2B/app/features/auth/data/repos/login_repo.dart';
import 'package:B2B/app/features/auth/logic/login/login_state.dart';
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
        // Always persist store name and owner name (or fallback to email)
        final storeName = loginResponse.userData?.storeData?.name;
        if (storeName != null && storeName.isNotEmpty) {
          await SharedPrefHelper.setStoreName(storeName);
        }

        if (rememberMe) {
          // Save token if Remember Me is checked
          if (token != null && token.isNotEmpty) {
            await SharedPrefHelper.setUserToken(token);
          }
        } else {
          // Remove any saved token if Remember Me is NOT checked
          await SharedPrefHelper.removeUserToken();
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
*/