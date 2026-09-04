import 'package:B2B/l10n/app_localizations.dart';

class ValidationHelper {
  static String? validateEmail(String? email, AppLocalizations l10n) {
    if (email == null || email.isEmpty) {
      return l10n.emailRequired;
    }
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(email)) {
      return l10n.emailInvalid;
    }
    return null;
  }

  static String? validatePassword(String? password, AppLocalizations l10n) {
    if (password == null || password.isEmpty) {
      return l10n.passwordRequired;
    }
    if (password.length < 8) {
      return l10n.passwordMinLength;
    }
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      return l10n.passwordNeedsUppercase;
    }
    if (!RegExp(r'[a-z]').hasMatch(password)) {
      return l10n.passwordNeedsLowercase;
    }
    if (!RegExp(r'[0-9]').hasMatch(password)) {
      return l10n.passwordNeedsNumber;
    }
    return null;
  }

  static String? validatePhone(String? phone, AppLocalizations l10n) {
    if (phone == null || phone.isEmpty) {
      return l10n.phoneRequired;
    }
    final phoneRegex = RegExp(r'^(\+?\d{1,3}[-.\s]?)?\d{9,15}$');
    if (!phoneRegex.hasMatch(phone.replaceAll(RegExp(r'\s'), ''))) {
      return l10n.phoneInvalid;
    }
    return null;
  }

  static String? validateName(
    String? name,
    AppLocalizations l10n, {
    String? fieldName,
  }) {
    final resolved = fieldName ?? l10n.fieldNameDefault;
    if (name == null || name.isEmpty) {
      return l10n.fieldRequired(resolved);
    }
    if (name.length < 2) {
      return l10n.fieldMinLengthTwo(resolved);
    }
    if (!RegExp(r'^[a-zA-Z\s\-]').hasMatch(name)) {
      return l10n.fieldLettersOnly(resolved);
    }
    return null;
  }

  static String? validateStoreName(String? storeName, AppLocalizations l10n) {
    if (storeName == null || storeName.isEmpty) {
      return l10n.storeNameRequired;
    }
    if (storeName.length < 2) {
      return l10n.storeNameMinLength;
    }
    if (storeName.length > 100) {
      return l10n.storeNameMaxLength;
    }
    return null;
  }

  static String? validateAddress(String? address, AppLocalizations l10n) {
    if (address == null || address.isEmpty) {
      return null;
    }
    if (address.length < 5) {
      return l10n.addressMinLength;
    }
    return null;
  }

  static String? validateRequired(
    String? value,
    AppLocalizations l10n, {
    String? fieldName,
  }) {
    final resolved = fieldName ?? l10n.fieldDefault;
    if (value == null || value.isEmpty) {
      return l10n.fieldRequired(resolved);
    }
    return null;
  }

  static String? validatePasswordMatch(
    String? password,
    String? confirmation,
    AppLocalizations l10n,
  ) {
    if (password != confirmation) {
      return l10n.passwordsDoNotMatch;
    }
    return null;
  }
}
