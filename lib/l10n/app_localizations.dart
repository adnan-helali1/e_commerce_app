import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('nl'),
    Locale('pt'),
    Locale('ru'),
    Locale('tr')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'B2B App'**
  String get appTitle;

  /// No description provided for @storeFallbackTitle.
  ///
  /// In en, this message translates to:
  /// **'Store'**
  String get storeFallbackTitle;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navOffers.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get navOffers;

  /// No description provided for @navCatalog.
  ///
  /// In en, this message translates to:
  /// **'Catalog'**
  String get navCatalog;

  /// No description provided for @navOrders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get navOrders;

  /// No description provided for @navLedger.
  ///
  /// In en, this message translates to:
  /// **'Ledger'**
  String get navLedger;

  /// No description provided for @navStock.
  ///
  /// In en, this message translates to:
  /// **'Stock'**
  String get navStock;

  /// No description provided for @pageNotFound.
  ///
  /// In en, this message translates to:
  /// **'Page not found'**
  String get pageNotFound;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @tryAgainLater.
  ///
  /// In en, this message translates to:
  /// **'Try Again Later'**
  String get tryAgainLater;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @export.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get export;

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @inactive.
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get inactive;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @approved.
  ///
  /// In en, this message translates to:
  /// **'Approved'**
  String get approved;

  /// No description provided for @preparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing'**
  String get preparing;

  /// No description provided for @received.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get received;

  /// No description provided for @submitted.
  ///
  /// In en, this message translates to:
  /// **'Submitted'**
  String get submitted;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @buyPrice.
  ///
  /// In en, this message translates to:
  /// **'Buy Price'**
  String get buyPrice;

  /// No description provided for @sellPrice.
  ///
  /// In en, this message translates to:
  /// **'Sell Price'**
  String get sellPrice;

  /// No description provided for @stock.
  ///
  /// In en, this message translates to:
  /// **'Stock'**
  String get stock;

  /// No description provided for @profit.
  ///
  /// In en, this message translates to:
  /// **'Profit'**
  String get profit;

  /// No description provided for @profitPerUnit.
  ///
  /// In en, this message translates to:
  /// **'Profit/Unit'**
  String get profitPerUnit;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @unitPrice.
  ///
  /// In en, this message translates to:
  /// **'Unit Price'**
  String get unitPrice;

  /// No description provided for @sellerName.
  ///
  /// In en, this message translates to:
  /// **'Seller Name'**
  String get sellerName;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @product.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get product;

  /// No description provided for @supplier.
  ///
  /// In en, this message translates to:
  /// **'Supplier'**
  String get supplier;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @created.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get created;

  /// No description provided for @updated.
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get updated;

  /// No description provided for @credit.
  ///
  /// In en, this message translates to:
  /// **'Credit'**
  String get credit;

  /// No description provided for @debit.
  ///
  /// In en, this message translates to:
  /// **'Debit'**
  String get debit;

  /// No description provided for @income.
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get income;

  /// No description provided for @expenses.
  ///
  /// In en, this message translates to:
  /// **'Expenses'**
  String get expenses;

  /// No description provided for @whatsapp.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp;

  /// No description provided for @instagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get instagram;

  /// No description provided for @facebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get facebook;

  /// No description provided for @telegram.
  ///
  /// In en, this message translates to:
  /// **'Telegram'**
  String get telegram;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @deleteTypedTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete {type}'**
  String deleteTypedTitle(String type);

  /// No description provided for @deleteTypedConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this {type}?'**
  String deleteTypedConfirmMessage(String type);

  /// No description provided for @doubleBackToExit.
  ///
  /// In en, this message translates to:
  /// **'Click one more time to close the app'**
  String get doubleBackToExit;

  /// No description provided for @browseOffers.
  ///
  /// In en, this message translates to:
  /// **'Browse Offers'**
  String get browseOffers;

  /// No description provided for @quickSale.
  ///
  /// In en, this message translates to:
  /// **'Quick Sale'**
  String get quickSale;

  /// No description provided for @updateCatalogItem.
  ///
  /// In en, this message translates to:
  /// **'Update Catalog Item'**
  String get updateCatalogItem;

  /// No description provided for @addOfferToCatalog.
  ///
  /// In en, this message translates to:
  /// **'Add Offer To Catalog'**
  String get addOfferToCatalog;

  /// No description provided for @priceHintZero.
  ///
  /// In en, this message translates to:
  /// **'0.00'**
  String get priceHintZero;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// No description provided for @emailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get emailInvalid;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// No description provided for @passwordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get passwordMinLength;

  /// No description provided for @passwordNeedsUppercase.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least 1 uppercase letter'**
  String get passwordNeedsUppercase;

  /// No description provided for @passwordNeedsLowercase.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least 1 lowercase letter'**
  String get passwordNeedsLowercase;

  /// No description provided for @passwordNeedsNumber.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least 1 number'**
  String get passwordNeedsNumber;

  /// No description provided for @phoneRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone number is required'**
  String get phoneRequired;

  /// No description provided for @phoneInvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid phone number'**
  String get phoneInvalid;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} is required'**
  String fieldRequired(String fieldName);

  /// No description provided for @fieldMinLengthTwo.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} must be at least 2 characters'**
  String fieldMinLengthTwo(String fieldName);

  /// No description provided for @fieldLettersOnly.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} can only contain letters, spaces, and hyphens'**
  String fieldLettersOnly(String fieldName);

  /// No description provided for @fieldNameDefault.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get fieldNameDefault;

  /// No description provided for @ownerNameField.
  ///
  /// In en, this message translates to:
  /// **'Owner name'**
  String get ownerNameField;

  /// No description provided for @fieldDefault.
  ///
  /// In en, this message translates to:
  /// **'Field'**
  String get fieldDefault;

  /// No description provided for @storeNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Store name is required'**
  String get storeNameRequired;

  /// No description provided for @storeNameMinLength.
  ///
  /// In en, this message translates to:
  /// **'Store name must be at least 2 characters'**
  String get storeNameMinLength;

  /// No description provided for @storeNameMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Store name must not exceed 100 characters'**
  String get storeNameMaxLength;

  /// No description provided for @addressMinLength.
  ///
  /// In en, this message translates to:
  /// **'Address must be at least 5 characters'**
  String get addressMinLength;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeBack;

  /// No description provided for @welcomeBackExclaim.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back!'**
  String get welcomeBackExclaim;

  /// No description provided for @signInSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to your supermarket account'**
  String get signInSubtitle;

  /// No description provided for @emailAddressRequiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Email Address *'**
  String get emailAddressRequiredLabel;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'store@example.com'**
  String get emailHint;

  /// No description provided for @passwordRequiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Password *'**
  String get passwordRequiredLabel;

  /// No description provided for @enterPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterPasswordHint;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @createAccountLink.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccountLink;

  /// No description provided for @loginSuccess.
  ///
  /// In en, this message translates to:
  /// **'Logged in successful!'**
  String get loginSuccess;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @registerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Register your store account'**
  String get registerSubtitle;

  /// No description provided for @storeNameRequiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Store Name *'**
  String get storeNameRequiredLabel;

  /// No description provided for @storeNameHint.
  ///
  /// In en, this message translates to:
  /// **'My Store'**
  String get storeNameHint;

  /// No description provided for @ownerNameRequiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Owner Name *'**
  String get ownerNameRequiredLabel;

  /// No description provided for @ownerNameHint.
  ///
  /// In en, this message translates to:
  /// **'Owner'**
  String get ownerNameHint;

  /// No description provided for @phoneRequiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone *'**
  String get phoneRequiredLabel;

  /// No description provided for @phoneHint.
  ///
  /// In en, this message translates to:
  /// **'0999999999'**
  String get phoneHint;

  /// No description provided for @emailRequiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Email *'**
  String get emailRequiredLabel;

  /// No description provided for @registerEmailHint.
  ///
  /// In en, this message translates to:
  /// **'store1@example.com'**
  String get registerEmailHint;

  /// No description provided for @passwordHintExample.
  ///
  /// In en, this message translates to:
  /// **'password123'**
  String get passwordHintExample;

  /// No description provided for @confirmPasswordRequiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password *'**
  String get confirmPasswordRequiredLabel;

  /// No description provided for @confirmPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Confirm your password'**
  String get confirmPasswordHint;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @registrationSuccess.
  ///
  /// In en, this message translates to:
  /// **'Registration successful!'**
  String get registrationSuccess;

  /// No description provided for @demoAccount.
  ///
  /// In en, this message translates to:
  /// **'Demo Account'**
  String get demoAccount;

  /// No description provided for @pleaseEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter a password'**
  String get pleaseEnterPassword;

  /// No description provided for @passwordSentToAdmin.
  ///
  /// In en, this message translates to:
  /// **'Password \"{password}\" has been sent to the administrator for verification'**
  String passwordSentToAdmin(String password);

  /// No description provided for @contactEmailSnack.
  ///
  /// In en, this message translates to:
  /// **'Email: helaliadnan877@gmail.com'**
  String get contactEmailSnack;

  /// No description provided for @contactWhatsappSnack.
  ///
  /// In en, this message translates to:
  /// **'WhatsApp: +963 985 198 014'**
  String get contactWhatsappSnack;

  /// No description provided for @recoverPassword.
  ///
  /// In en, this message translates to:
  /// **'Recover Password'**
  String get recoverPassword;

  /// No description provided for @recoverPasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how you want to recover your account'**
  String get recoverPasswordSubtitle;

  /// No description provided for @submitAPassword.
  ///
  /// In en, this message translates to:
  /// **'Submit a Password'**
  String get submitAPassword;

  /// No description provided for @submitPasswordHelpText.
  ///
  /// In en, this message translates to:
  /// **'If you can\'t remember your password, give me the last password you remember or a password you think it\'s like it and send it'**
  String get submitPasswordHelpText;

  /// No description provided for @rememberedPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the password you remember'**
  String get rememberedPasswordHint;

  /// No description provided for @sendPassword.
  ///
  /// In en, this message translates to:
  /// **'Send Password'**
  String get sendPassword;

  /// No description provided for @contactAdministrator.
  ///
  /// In en, this message translates to:
  /// **'Contact Administrator'**
  String get contactAdministrator;

  /// No description provided for @contactAdminHelpText.
  ///
  /// In en, this message translates to:
  /// **'Contact us on email or WhatsApp for manual password recovery assistance'**
  String get contactAdminHelpText;

  /// No description provided for @supportEmail.
  ///
  /// In en, this message translates to:
  /// **'helaliadnan877@gmail.com'**
  String get supportEmail;

  /// No description provided for @supportWhatsappWithLabel.
  ///
  /// In en, this message translates to:
  /// **'+963 985 198 014 (WhatsApp)'**
  String get supportWhatsappWithLabel;

  /// No description provided for @supportWhatsapp.
  ///
  /// In en, this message translates to:
  /// **'+963985198014'**
  String get supportWhatsapp;

  /// No description provided for @backToSignIn.
  ///
  /// In en, this message translates to:
  /// **'← Back to Sign In'**
  String get backToSignIn;

  /// No description provided for @homeOverviewSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Here\'s your business overview for today'**
  String get homeOverviewSubtitle;

  /// No description provided for @quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get quickActions;

  /// No description provided for @manageCatalog.
  ///
  /// In en, this message translates to:
  /// **'Manage Catalog'**
  String get manageCatalog;

  /// No description provided for @viewLedger.
  ///
  /// In en, this message translates to:
  /// **'View Ledger'**
  String get viewLedger;

  /// No description provided for @keyMetrics.
  ///
  /// In en, this message translates to:
  /// **'Key Metrics'**
  String get keyMetrics;

  /// No description provided for @recentOrders.
  ///
  /// In en, this message translates to:
  /// **'Recent Orders'**
  String get recentOrders;

  /// No description provided for @orderWithId.
  ///
  /// In en, this message translates to:
  /// **'Order {id}'**
  String orderWithId(String id);

  /// No description provided for @errorWithMessage.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String errorWithMessage(String error);

  /// No description provided for @revenueToday.
  ///
  /// In en, this message translates to:
  /// **'Revenue Today'**
  String get revenueToday;

  /// No description provided for @totalOrders.
  ///
  /// In en, this message translates to:
  /// **'Total Orders'**
  String get totalOrders;

  /// No description provided for @salesToday.
  ///
  /// In en, this message translates to:
  /// **'Sales Today'**
  String get salesToday;

  /// No description provided for @profitMargin.
  ///
  /// In en, this message translates to:
  /// **'Profit Margin'**
  String get profitMargin;

  /// No description provided for @lowStock.
  ///
  /// In en, this message translates to:
  /// **'Low Stock'**
  String get lowStock;

  /// No description provided for @itemsNeedRestocking.
  ///
  /// In en, this message translates to:
  /// **'Items need restocking'**
  String get itemsNeedRestocking;

  /// No description provided for @ordersToProcess.
  ///
  /// In en, this message translates to:
  /// **'Orders to process'**
  String get ordersToProcess;

  /// No description provided for @metricDecrease.
  ///
  /// In en, this message translates to:
  /// **'decrease'**
  String get metricDecrease;

  /// No description provided for @metricIncrease.
  ///
  /// In en, this message translates to:
  /// **'increase'**
  String get metricIncrease;

  /// No description provided for @metricChangeNote.
  ///
  /// In en, this message translates to:
  /// **'{percent}% {label}'**
  String metricChangeNote(String percent, String label);

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @profileUpdatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileUpdatedSuccess;

  /// No description provided for @updateProfile.
  ///
  /// In en, this message translates to:
  /// **'Update Profile'**
  String get updateProfile;

  /// No description provided for @storeName.
  ///
  /// In en, this message translates to:
  /// **'Store Name'**
  String get storeName;

  /// No description provided for @ownerName.
  ///
  /// In en, this message translates to:
  /// **'Owner Name'**
  String get ownerName;

  /// No description provided for @settingsAndPreferences.
  ///
  /// In en, this message translates to:
  /// **'Settings & Preferences'**
  String get settingsAndPreferences;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @updateStoreInformation.
  ///
  /// In en, this message translates to:
  /// **'Update store information'**
  String get updateStoreInformation;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @manageAlertsAndUpdates.
  ///
  /// In en, this message translates to:
  /// **'Manage alerts and updates'**
  String get manageAlertsAndUpdates;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @lightModeEnabled.
  ///
  /// In en, this message translates to:
  /// **'Light mode enabled'**
  String get lightModeEnabled;

  /// No description provided for @darkModeEnabled.
  ///
  /// In en, this message translates to:
  /// **'Dark mode enabled'**
  String get darkModeEnabled;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @preferencesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Language, currency, etc.'**
  String get preferencesSubtitle;

  /// No description provided for @supportAndLegal.
  ///
  /// In en, this message translates to:
  /// **'Support & Legal'**
  String get supportAndLegal;

  /// No description provided for @helpAndSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpAndSupport;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @storeInformation.
  ///
  /// In en, this message translates to:
  /// **'Store Information'**
  String get storeInformation;

  /// No description provided for @storeIdLabel.
  ///
  /// In en, this message translates to:
  /// **'ID: SM--{id}'**
  String storeIdLabel(String id);

  /// No description provided for @privacyPolicyIntro.
  ///
  /// In en, this message translates to:
  /// **'This Privacy Policy explains how our B2B eCommerce application collects, uses, and protects your information.'**
  String get privacyPolicyIntro;

  /// No description provided for @privacySectionCollectTitle.
  ///
  /// In en, this message translates to:
  /// **'1. Information We Collect'**
  String get privacySectionCollectTitle;

  /// No description provided for @privacySectionCollectBody.
  ///
  /// In en, this message translates to:
  /// **'We may collect business information such as company name, contact details, email address, and transaction data. We also collect technical data like device type and usage analytics.'**
  String get privacySectionCollectBody;

  /// No description provided for @privacySectionUseTitle.
  ///
  /// In en, this message translates to:
  /// **'2. How We Use Information'**
  String get privacySectionUseTitle;

  /// No description provided for @privacySectionUseBody.
  ///
  /// In en, this message translates to:
  /// **'We use your data to provide services, process transactions, improve the platform, and communicate updates or support.'**
  String get privacySectionUseBody;

  /// No description provided for @privacySectionSharingTitle.
  ///
  /// In en, this message translates to:
  /// **'3. Data Sharing'**
  String get privacySectionSharingTitle;

  /// No description provided for @privacySectionSharingBody.
  ///
  /// In en, this message translates to:
  /// **'We do not sell your data. We may share information with trusted partners only to operate the platform or comply with legal obligations.'**
  String get privacySectionSharingBody;

  /// No description provided for @privacySectionSecurityTitle.
  ///
  /// In en, this message translates to:
  /// **'4. Security'**
  String get privacySectionSecurityTitle;

  /// No description provided for @privacySectionSecurityBody.
  ///
  /// In en, this message translates to:
  /// **'We implement strong security measures to protect your data, including encryption and secure servers.'**
  String get privacySectionSecurityBody;

  /// No description provided for @privacySectionRightsTitle.
  ///
  /// In en, this message translates to:
  /// **'5. Your Rights'**
  String get privacySectionRightsTitle;

  /// No description provided for @privacySectionRightsBody.
  ///
  /// In en, this message translates to:
  /// **'You can request access, correction, or deletion of your data at any time by contacting us.'**
  String get privacySectionRightsBody;

  /// No description provided for @privacySectionContactTitle.
  ///
  /// In en, this message translates to:
  /// **'6. Contact Us'**
  String get privacySectionContactTitle;

  /// No description provided for @privacySectionContactBody.
  ///
  /// In en, this message translates to:
  /// **'If you have any questions, contact us at:\n\nEmail: helaliadnan877@gmail.com'**
  String get privacySectionContactBody;

  /// No description provided for @privacyLastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated: 2025'**
  String get privacyLastUpdated;

  /// No description provided for @purchaseOrders.
  ///
  /// In en, this message translates to:
  /// **'Purchase Orders'**
  String get purchaseOrders;

  /// No description provided for @pendingApproval.
  ///
  /// In en, this message translates to:
  /// **'Pending Approval'**
  String get pendingApproval;

  /// No description provided for @totalValue.
  ///
  /// In en, this message translates to:
  /// **'Total Value'**
  String get totalValue;

  /// No description provided for @allOrders.
  ///
  /// In en, this message translates to:
  /// **'All Orders'**
  String get allOrders;

  /// No description provided for @ordersFoundCount.
  ///
  /// In en, this message translates to:
  /// **'{count} orders found'**
  String ordersFoundCount(int count);

  /// No description provided for @totalAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Total: \${amount}'**
  String totalAmountLabel(String amount);

  /// No description provided for @noOrdersFound.
  ///
  /// In en, this message translates to:
  /// **'No orders found'**
  String get noOrdersFound;

  /// No description provided for @orderPoPrefix.
  ///
  /// In en, this message translates to:
  /// **'Order #PO-{id}'**
  String orderPoPrefix(String id);

  /// No description provided for @orderDeleteType.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get orderDeleteType;

  /// No description provided for @itemsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} items'**
  String itemsCount(int count);

  /// No description provided for @loadingActiveOffers.
  ///
  /// In en, this message translates to:
  /// **'Loading Active Offers...'**
  String get loadingActiveOffers;

  /// No description provided for @failedLoadActiveOffers.
  ///
  /// In en, this message translates to:
  /// **'Failed to load active offers: {error}'**
  String failedLoadActiveOffers(String error);

  /// No description provided for @selectOffersToCreateOrder.
  ///
  /// In en, this message translates to:
  /// **'Select Offers to Create Order'**
  String get selectOffersToCreateOrder;

  /// No description provided for @totalOrderPrice.
  ///
  /// In en, this message translates to:
  /// **'Total Order Price'**
  String get totalOrderPrice;

  /// No description provided for @orderNoteHint.
  ///
  /// In en, this message translates to:
  /// **'Order note'**
  String get orderNoteHint;

  /// No description provided for @createOrder.
  ///
  /// In en, this message translates to:
  /// **'Create Order'**
  String get createOrder;

  /// No description provided for @ordersCreatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'{count} order(s) created successfully!'**
  String ordersCreatedSuccess(int count);

  /// No description provided for @fixQuantityErrors.
  ///
  /// In en, this message translates to:
  /// **'Please fix the quantity errors before submitting'**
  String get fixQuantityErrors;

  /// No description provided for @selectAtLeastOneItem.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one item'**
  String get selectAtLeastOneItem;

  /// No description provided for @maxStockLabel.
  ///
  /// In en, this message translates to:
  /// **'Max: {stock}'**
  String maxStockLabel(String stock);

  /// No description provided for @idPrefix.
  ///
  /// In en, this message translates to:
  /// **'ID -- {id}'**
  String idPrefix(String id);

  /// No description provided for @totalPrice.
  ///
  /// In en, this message translates to:
  /// **'Total Price'**
  String get totalPrice;

  /// No description provided for @qtyHint.
  ///
  /// In en, this message translates to:
  /// **'Qty'**
  String get qtyHint;

  /// No description provided for @myStoreCatalog.
  ///
  /// In en, this message translates to:
  /// **'My Store Catalog'**
  String get myStoreCatalog;

  /// No description provided for @activeProducts.
  ///
  /// In en, this message translates to:
  /// **'Active Products'**
  String get activeProducts;

  /// No description provided for @potentialProfit.
  ///
  /// In en, this message translates to:
  /// **'Potential Profit'**
  String get potentialProfit;

  /// No description provided for @searchCatalogHint.
  ///
  /// In en, this message translates to:
  /// **'Search catalog...'**
  String get searchCatalogHint;

  /// No description provided for @activeOnly.
  ///
  /// In en, this message translates to:
  /// **'Active Only'**
  String get activeOnly;

  /// No description provided for @addProduct.
  ///
  /// In en, this message translates to:
  /// **'Add Product'**
  String get addProduct;

  /// No description provided for @addProducts.
  ///
  /// In en, this message translates to:
  /// **'Add Products'**
  String get addProducts;

  /// No description provided for @addProductsGoToOffers.
  ///
  /// In en, this message translates to:
  /// **'To add products, go to Suppliers Offers section.'**
  String get addProductsGoToOffers;

  /// No description provided for @goToOffers.
  ///
  /// In en, this message translates to:
  /// **'Go to Offers'**
  String get goToOffers;

  /// No description provided for @noProductsInCatalog.
  ///
  /// In en, this message translates to:
  /// **'No products in catalog'**
  String get noProductsInCatalog;

  /// No description provided for @addProductToGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Add a product to get started'**
  String get addProductToGetStarted;

  /// No description provided for @estProfitLabel.
  ///
  /// In en, this message translates to:
  /// **'Est. Profit: \${amount}'**
  String estProfitLabel(String amount);

  /// No description provided for @itemDeleteType.
  ///
  /// In en, this message translates to:
  /// **'Item'**
  String get itemDeleteType;

  /// No description provided for @offerUpdatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Offer updated successfully'**
  String get offerUpdatedSuccess;

  /// No description provided for @catalogItemUpdatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Catalog item updated successfully'**
  String get catalogItemUpdatedSuccess;

  /// No description provided for @supplierOffers.
  ///
  /// In en, this message translates to:
  /// **'Supplier Offers'**
  String get supplierOffers;

  /// No description provided for @totalOffers.
  ///
  /// In en, this message translates to:
  /// **'Total offers'**
  String get totalOffers;

  /// No description provided for @allOffersReceived.
  ///
  /// In en, this message translates to:
  /// **'All offers received'**
  String get allOffersReceived;

  /// No description provided for @availableOffers.
  ///
  /// In en, this message translates to:
  /// **'Available offers'**
  String get availableOffers;

  /// No description provided for @readyToReview.
  ///
  /// In en, this message translates to:
  /// **'Ready to review'**
  String get readyToReview;

  /// No description provided for @searchProductsOrSuppliersHint.
  ///
  /// In en, this message translates to:
  /// **'Search products or suppliers...'**
  String get searchProductsOrSuppliersHint;

  /// No description provided for @filterByCategory.
  ///
  /// In en, this message translates to:
  /// **'Filter by Category'**
  String get filterByCategory;

  /// No description provided for @categoryAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get categoryAll;

  /// No description provided for @categoryBeverages.
  ///
  /// In en, this message translates to:
  /// **'Beverages'**
  String get categoryBeverages;

  /// No description provided for @categorySnacks.
  ///
  /// In en, this message translates to:
  /// **'Snacks'**
  String get categorySnacks;

  /// No description provided for @categoryFruits.
  ///
  /// In en, this message translates to:
  /// **'Fruits'**
  String get categoryFruits;

  /// No description provided for @categoryVegetables.
  ///
  /// In en, this message translates to:
  /// **'Vegetables'**
  String get categoryVegetables;

  /// No description provided for @categoryDairy.
  ///
  /// In en, this message translates to:
  /// **'Dairy'**
  String get categoryDairy;

  /// No description provided for @categoryEggs.
  ///
  /// In en, this message translates to:
  /// **'Eggs'**
  String get categoryEggs;

  /// No description provided for @buyPriceMultiline.
  ///
  /// In en, this message translates to:
  /// **'Buy\nPrice'**
  String get buyPriceMultiline;

  /// No description provided for @noResultsFound.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResultsFound;

  /// No description provided for @offerAddedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Offer added successfully'**
  String get offerAddedSuccess;

  /// No description provided for @inventoryOverview.
  ///
  /// In en, this message translates to:
  /// **'Inventory Overview'**
  String get inventoryOverview;

  /// No description provided for @totalItems.
  ///
  /// In en, this message translates to:
  /// **'Total Items'**
  String get totalItems;

  /// No description provided for @outOfStock.
  ///
  /// In en, this message translates to:
  /// **'Out of Stock'**
  String get outOfStock;

  /// No description provided for @searchProductsHint.
  ///
  /// In en, this message translates to:
  /// **'Search Products...'**
  String get searchProductsHint;

  /// No description provided for @allItemsWithCount.
  ///
  /// In en, this message translates to:
  /// **'All Items ({count})'**
  String allItemsWithCount(int count);

  /// No description provided for @lowStockWithCount.
  ///
  /// In en, this message translates to:
  /// **'Low Stock ({count})'**
  String lowStockWithCount(int count);

  /// No description provided for @outOfStockWithCount.
  ///
  /// In en, this message translates to:
  /// **'Out of Stock ({count})'**
  String outOfStockWithCount(int count);

  /// No description provided for @noItemsFound.
  ///
  /// In en, this message translates to:
  /// **'No items found'**
  String get noItemsFound;

  /// No description provided for @tryAdjustSearchOrFilter.
  ///
  /// In en, this message translates to:
  /// **'Try adjusting your search or filter.'**
  String get tryAdjustSearchOrFilter;

  /// No description provided for @stockAddedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Stock added successfully'**
  String get stockAddedSuccess;

  /// No description provided for @addStock.
  ///
  /// In en, this message translates to:
  /// **'Add Stock'**
  String get addStock;

  /// No description provided for @stockLevel.
  ///
  /// In en, this message translates to:
  /// **'Stock Level'**
  String get stockLevel;

  /// No description provided for @minStock.
  ///
  /// In en, this message translates to:
  /// **'Min Stock'**
  String get minStock;

  /// No description provided for @lastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last Updated'**
  String get lastUpdated;

  /// No description provided for @stockDetails.
  ///
  /// In en, this message translates to:
  /// **'Stock Details'**
  String get stockDetails;

  /// No description provided for @stockInfo.
  ///
  /// In en, this message translates to:
  /// **'Stock Info'**
  String get stockInfo;

  /// No description provided for @storeProduct.
  ///
  /// In en, this message translates to:
  /// **'Store Product'**
  String get storeProduct;

  /// No description provided for @supplierProduct.
  ///
  /// In en, this message translates to:
  /// **'Supplier Product'**
  String get supplierProduct;

  /// No description provided for @stockQty.
  ///
  /// In en, this message translates to:
  /// **'Stock Qty'**
  String get stockQty;

  /// No description provided for @totalIncome.
  ///
  /// In en, this message translates to:
  /// **'Total Income'**
  String get totalIncome;

  /// No description provided for @totalExpenses.
  ///
  /// In en, this message translates to:
  /// **'Total Expenses'**
  String get totalExpenses;

  /// No description provided for @currentBalance.
  ///
  /// In en, this message translates to:
  /// **'Current Balance'**
  String get currentBalance;

  /// No description provided for @transactionHistory.
  ///
  /// In en, this message translates to:
  /// **'Transaction History'**
  String get transactionHistory;

  /// No description provided for @noTransactionsYet.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet'**
  String get noTransactionsYet;

  /// No description provided for @ledgerRefLabel.
  ///
  /// In en, this message translates to:
  /// **'Ref. {type}-{id}'**
  String ledgerRefLabel(String type, String id);

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get somethingWentWrong;

  /// No description provided for @pdfSavedSuccess.
  ///
  /// In en, this message translates to:
  /// **'PDF saved successfully'**
  String get pdfSavedSuccess;

  /// No description provided for @savePdf.
  ///
  /// In en, this message translates to:
  /// **'Save PDF'**
  String get savePdf;

  /// No description provided for @sharePdf.
  ///
  /// In en, this message translates to:
  /// **'Share PDF'**
  String get sharePdf;

  /// No description provided for @pdfStoreLedgerReport.
  ///
  /// In en, this message translates to:
  /// **'STORE LEDGER REPORT'**
  String get pdfStoreLedgerReport;

  /// No description provided for @pdfStoreName.
  ///
  /// In en, this message translates to:
  /// **'Store Name: {storeName}'**
  String pdfStoreName(String storeName);

  /// No description provided for @pdfGeneratedAt.
  ///
  /// In en, this message translates to:
  /// **'Generated At: {dateTime}'**
  String pdfGeneratedAt(String dateTime);

  /// No description provided for @pdfSummary.
  ///
  /// In en, this message translates to:
  /// **'SUMMARY'**
  String get pdfSummary;

  /// No description provided for @pdfTotalCredits.
  ///
  /// In en, this message translates to:
  /// **'Total Credits : \${amount}'**
  String pdfTotalCredits(String amount);

  /// No description provided for @pdfTotalDebits.
  ///
  /// In en, this message translates to:
  /// **'Total Debits : \${amount}'**
  String pdfTotalDebits(String amount);

  /// No description provided for @pdfBalance.
  ///
  /// In en, this message translates to:
  /// **'Balance : \${amount}'**
  String pdfBalance(String amount);

  /// No description provided for @pdfColDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get pdfColDate;

  /// No description provided for @pdfColOrder.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get pdfColOrder;

  /// No description provided for @pdfColType.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get pdfColType;

  /// No description provided for @pdfColAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get pdfColAmount;

  /// No description provided for @pdfColNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get pdfColNotes;

  /// No description provided for @langEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get langEnglish;

  /// No description provided for @langGerman.
  ///
  /// In en, this message translates to:
  /// **'Deutsch'**
  String get langGerman;

  /// No description provided for @langSpanish.
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get langSpanish;

  /// No description provided for @langFrench.
  ///
  /// In en, this message translates to:
  /// **'Français'**
  String get langFrench;

  /// No description provided for @langDutch.
  ///
  /// In en, this message translates to:
  /// **'Nederlands'**
  String get langDutch;

  /// No description provided for @langPortuguese.
  ///
  /// In en, this message translates to:
  /// **'Português'**
  String get langPortuguese;

  /// No description provided for @langRussian.
  ///
  /// In en, this message translates to:
  /// **'Русский'**
  String get langRussian;

  /// No description provided for @langTurkish.
  ///
  /// In en, this message translates to:
  /// **'Türkçe'**
  String get langTurkish;

  /// No description provided for @offlineCachedDataMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'re offline. We\'ll keep showing your saved data.'**
  String get offlineCachedDataMessage;

  /// No description provided for @connectionRestoredMessage.
  ///
  /// In en, this message translates to:
  /// **'You\'re back online. Refreshing with the latest data.'**
  String get connectionRestoredMessage;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'de',
        'en',
        'es',
        'fr',
        'nl',
        'pt',
        'ru',
        'tr'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
