import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/constans.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/shared_pref_helper.dart';
import 'package:B2B/e_commerce_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await checkIfLoggedInUser();

  runApp(const ECommerceApp());
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getUserToken();
  isLoggedInUser = !userToken.isNullOrEmpty;
}
