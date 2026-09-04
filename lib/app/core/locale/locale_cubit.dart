import 'package:B2B/app/core/helpers/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en'));

  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('de'),
    Locale('es'),
    Locale('fr'),
    Locale('nl'),
    Locale('pt'),
    Locale('ru'),
    Locale('tr'),
  ];

  Future<void> load() async {
    final code = await SharedPrefHelper.getAppLocale();
    if (code != null &&
        supportedLocales.any((locale) => locale.languageCode == code)) {
      emit(Locale(code));
    }
  }

  Future<void> changeLocale(Locale locale) async {
    await SharedPrefHelper.setAppLocale(locale.languageCode);
    emit(locale);
  }
}
