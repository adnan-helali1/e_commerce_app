import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/shared_pref_helper.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/features/auth/data/repos/login_repo.dart';
import 'package:flutter/material.dart';

Future<void> logout(BuildContext context, LoginRepo loginRepo) async {
  try {
    final result = await loginRepo.logout();
    // handle result (log success/failure)
    result.when(
      success: (_) => debugPrint('Logout API success'),
      failure: (err) => debugPrint(
          'Logout API failure: ${err.apiErrorModel.getErrorMessage()}'),
    );
  } catch (e) {
    debugPrint('Logout API call failed: $e');
  } finally {
    await SharedPrefHelper.clearAllSecuredData();
    context.pushReplacementNamed(Routes.loginscreen);
  }
}
