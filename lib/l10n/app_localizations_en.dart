// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'B2B App';

  @override
  String get storeFallbackTitle => 'Store';

  @override
  String get navHome => 'Home';

  @override
  String get navOffers => 'Offers';

  @override
  String get navCatalog => 'Catalog';

  @override
  String get navOrders => 'Orders';

  @override
  String get navLedger => 'Ledger';

  @override
  String get navStock => 'Stock';

  @override
  String get pageNotFound => 'Page not found';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get close => 'Close';

  @override
  String get update => 'Update';

  @override
  String get submit => 'Submit';

  @override
  String get add => 'Add';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get tryAgainLater => 'Try Again Later';

  @override
  String get viewAll => 'View All';

  @override
  String get details => 'Details';

  @override
  String get export => 'Export';

  @override
  String get preview => 'Preview';

  @override
  String get status => 'Status';

  @override
  String get active => 'Active';

  @override
  String get inactive => 'Inactive';

  @override
  String get pending => 'Pending';

  @override
  String get approved => 'Approved';

  @override
  String get preparing => 'Preparing';

  @override
  String get received => 'Received';

  @override
  String get submitted => 'Submitted';

  @override
  String get cancelled => 'Cancelled';

  @override
  String get all => 'All';

  @override
  String get buyPrice => 'Buy Price';

  @override
  String get sellPrice => 'Sell Price';

  @override
  String get stock => 'Stock';

  @override
  String get profit => 'Profit';

  @override
  String get profitPerUnit => 'Profit/Unit';

  @override
  String get quantity => 'Quantity';

  @override
  String get unitPrice => 'Unit Price';

  @override
  String get sellerName => 'Seller Name';

  @override
  String get phone => 'Phone';

  @override
  String get email => 'Email';

  @override
  String get address => 'Address';

  @override
  String get name => 'Name';

  @override
  String get password => 'Password';

  @override
  String get category => 'Category';

  @override
  String get product => 'Product';

  @override
  String get supplier => 'Supplier';

  @override
  String get description => 'Description';

  @override
  String get created => 'Created';

  @override
  String get updated => 'Updated';

  @override
  String get credit => 'Credit';

  @override
  String get debit => 'Debit';

  @override
  String get income => 'Income';

  @override
  String get expenses => 'Expenses';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get instagram => 'Instagram';

  @override
  String get facebook => 'Facebook';

  @override
  String get telegram => 'Telegram';

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String deleteTypedTitle(String type) {
    return 'Delete $type';
  }

  @override
  String deleteTypedConfirmMessage(String type) {
    return 'Are you sure you want to delete this $type?';
  }

  @override
  String get doubleBackToExit => 'Click one more time to close the app';

  @override
  String get browseOffers => 'Browse Offers';

  @override
  String get quickSale => 'Quick Sale';

  @override
  String get updateCatalogItem => 'Update Catalog Item';

  @override
  String get addOfferToCatalog => 'Add Offer To Catalog';

  @override
  String get priceHintZero => '0.00';

  @override
  String get emailRequired => 'Email is required';

  @override
  String get emailInvalid => 'Please enter a valid email address';

  @override
  String get passwordRequired => 'Password is required';

  @override
  String get passwordMinLength => 'Password must be at least 8 characters';

  @override
  String get passwordNeedsUppercase =>
      'Password must contain at least 1 uppercase letter';

  @override
  String get passwordNeedsLowercase =>
      'Password must contain at least 1 lowercase letter';

  @override
  String get passwordNeedsNumber => 'Password must contain at least 1 number';

  @override
  String get phoneRequired => 'Phone number is required';

  @override
  String get phoneInvalid => 'Please enter a valid phone number';

  @override
  String fieldRequired(String fieldName) {
    return '$fieldName is required';
  }

  @override
  String fieldMinLengthTwo(String fieldName) {
    return '$fieldName must be at least 2 characters';
  }

  @override
  String fieldLettersOnly(String fieldName) {
    return '$fieldName can only contain letters, spaces, and hyphens';
  }

  @override
  String get fieldNameDefault => 'Name';

  @override
  String get ownerNameField => 'Owner name';

  @override
  String get fieldDefault => 'Field';

  @override
  String get storeNameRequired => 'Store name is required';

  @override
  String get storeNameMinLength => 'Store name must be at least 2 characters';

  @override
  String get storeNameMaxLength => 'Store name must not exceed 100 characters';

  @override
  String get addressMinLength => 'Address must be at least 5 characters';

  @override
  String get passwordsDoNotMatch => 'Passwords do not match';

  @override
  String get welcomeBack => 'Welcome Back';

  @override
  String get welcomeBackExclaim => 'Welcome Back!';

  @override
  String get signInSubtitle => 'Sign in to your supermarket account';

  @override
  String get emailAddressRequiredLabel => 'Email Address *';

  @override
  String get emailHint => 'store@example.com';

  @override
  String get passwordRequiredLabel => 'Password *';

  @override
  String get enterPasswordHint => 'Enter your password';

  @override
  String get rememberMe => 'Remember me';

  @override
  String get forgotPassword => 'Forgot password?';

  @override
  String get signIn => 'Sign In';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get createAccountLink => 'Create account';

  @override
  String get loginSuccess => 'Logged in successful!';

  @override
  String get createAccount => 'Create Account';

  @override
  String get registerSubtitle => 'Register your store account';

  @override
  String get storeNameRequiredLabel => 'Store Name *';

  @override
  String get storeNameHint => 'My Store';

  @override
  String get ownerNameRequiredLabel => 'Owner Name *';

  @override
  String get ownerNameHint => 'Owner';

  @override
  String get phoneRequiredLabel => 'Phone *';

  @override
  String get phoneHint => '0999999999';

  @override
  String get emailRequiredLabel => 'Email *';

  @override
  String get registerEmailHint => 'store1@example.com';

  @override
  String get passwordHintExample => 'password123';

  @override
  String get confirmPasswordRequiredLabel => 'Confirm Password *';

  @override
  String get confirmPasswordHint => 'Confirm your password';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get registrationSuccess => 'Registration successful!';

  @override
  String get demoAccount => 'Demo Account';

  @override
  String get pleaseEnterPassword => 'Please enter a password';

  @override
  String passwordSentToAdmin(String password) {
    return 'Password \"$password\" has been sent to the administrator for verification';
  }

  @override
  String get contactEmailSnack => 'Email: helaliadnan877@gmail.com';

  @override
  String get contactWhatsappSnack => 'WhatsApp: +963 985 198 014';

  @override
  String get recoverPassword => 'Recover Password';

  @override
  String get recoverPasswordSubtitle =>
      'Choose how you want to recover your account';

  @override
  String get submitAPassword => 'Submit a Password';

  @override
  String get submitPasswordHelpText =>
      'If you can\'t remember your password, give me the last password you remember or a password you think it\'s like it and send it';

  @override
  String get rememberedPasswordHint => 'Enter the password you remember';

  @override
  String get sendPassword => 'Send Password';

  @override
  String get contactAdministrator => 'Contact Administrator';

  @override
  String get contactAdminHelpText =>
      'Contact us on email or WhatsApp for manual password recovery assistance';

  @override
  String get supportEmail => 'helaliadnan877@gmail.com';

  @override
  String get supportWhatsappWithLabel => '+963 985 198 014 (WhatsApp)';

  @override
  String get supportWhatsapp => '+963985198014';

  @override
  String get backToSignIn => '← Back to Sign In';

  @override
  String get homeOverviewSubtitle => 'Here\'s your business overview for today';

  @override
  String get quickActions => 'Quick Actions';

  @override
  String get manageCatalog => 'Manage Catalog';

  @override
  String get viewLedger => 'View Ledger';

  @override
  String get keyMetrics => 'Key Metrics';

  @override
  String get recentOrders => 'Recent Orders';

  @override
  String orderWithId(String id) {
    return 'Order $id';
  }

  @override
  String errorWithMessage(String error) {
    return 'Error: $error';
  }

  @override
  String get revenueToday => 'Revenue Today';

  @override
  String get totalOrders => 'Total Orders';

  @override
  String get salesToday => 'Sales Today';

  @override
  String get profitMargin => 'Profit Margin';

  @override
  String get lowStock => 'Low Stock';

  @override
  String get itemsNeedRestocking => 'Items need restocking';

  @override
  String get ordersToProcess => 'Orders to process';

  @override
  String get metricDecrease => 'decrease';

  @override
  String get metricIncrease => 'increase';

  @override
  String metricChangeNote(String percent, String label) {
    return '$percent% $label';
  }

  @override
  String get logout => 'Logout';

  @override
  String get profileUpdatedSuccess => 'Profile updated successfully';

  @override
  String get updateProfile => 'Update Profile';

  @override
  String get storeName => 'Store Name';

  @override
  String get ownerName => 'Owner Name';

  @override
  String get settingsAndPreferences => 'Settings & Preferences';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get updateStoreInformation => 'Update store information';

  @override
  String get notifications => 'Notifications';

  @override
  String get manageAlertsAndUpdates => 'Manage alerts and updates';

  @override
  String get appearance => 'Appearance';

  @override
  String get lightModeEnabled => 'Light mode enabled';

  @override
  String get darkModeEnabled => 'Dark mode enabled';

  @override
  String get preferences => 'Preferences';

  @override
  String get preferencesSubtitle => 'Language, currency, etc.';

  @override
  String get supportAndLegal => 'Support & Legal';

  @override
  String get helpAndSupport => 'Help & Support';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get storeInformation => 'Store Information';

  @override
  String storeIdLabel(String id) {
    return 'ID: SM--$id';
  }

  @override
  String get privacyPolicyIntro =>
      'This Privacy Policy explains how our B2B eCommerce application collects, uses, and protects your information.';

  @override
  String get privacySectionCollectTitle => '1. Information We Collect';

  @override
  String get privacySectionCollectBody =>
      'We may collect business information such as company name, contact details, email address, and transaction data. We also collect technical data like device type and usage analytics.';

  @override
  String get privacySectionUseTitle => '2. How We Use Information';

  @override
  String get privacySectionUseBody =>
      'We use your data to provide services, process transactions, improve the platform, and communicate updates or support.';

  @override
  String get privacySectionSharingTitle => '3. Data Sharing';

  @override
  String get privacySectionSharingBody =>
      'We do not sell your data. We may share information with trusted partners only to operate the platform or comply with legal obligations.';

  @override
  String get privacySectionSecurityTitle => '4. Security';

  @override
  String get privacySectionSecurityBody =>
      'We implement strong security measures to protect your data, including encryption and secure servers.';

  @override
  String get privacySectionRightsTitle => '5. Your Rights';

  @override
  String get privacySectionRightsBody =>
      'You can request access, correction, or deletion of your data at any time by contacting us.';

  @override
  String get privacySectionContactTitle => '6. Contact Us';

  @override
  String get privacySectionContactBody =>
      'If you have any questions, contact us at:\n\nEmail: helaliadnan877@gmail.com';

  @override
  String get privacyLastUpdated => 'Last updated: 2025';

  @override
  String get purchaseOrders => 'Purchase Orders';

  @override
  String get pendingApproval => 'Pending Approval';

  @override
  String get totalValue => 'Total Value';

  @override
  String get allOrders => 'All Orders';

  @override
  String ordersFoundCount(int count) {
    return '$count orders found';
  }

  @override
  String totalAmountLabel(String amount) {
    return 'Total: \$$amount';
  }

  @override
  String get noOrdersFound => 'No orders found';

  @override
  String orderPoPrefix(String id) {
    return 'Order #PO-$id';
  }

  @override
  String get orderDeleteType => 'Order';

  @override
  String itemsCount(int count) {
    return '$count items';
  }

  @override
  String get loadingActiveOffers => 'Loading Active Offers...';

  @override
  String failedLoadActiveOffers(String error) {
    return 'Failed to load active offers: $error';
  }

  @override
  String get selectOffersToCreateOrder => 'Select Offers to Create Order';

  @override
  String get totalOrderPrice => 'Total Order Price';

  @override
  String get orderNoteHint => 'Order note';

  @override
  String get createOrder => 'Create Order';

  @override
  String ordersCreatedSuccess(int count) {
    return '$count order(s) created successfully!';
  }

  @override
  String get fixQuantityErrors =>
      'Please fix the quantity errors before submitting';

  @override
  String get selectAtLeastOneItem => 'Please select at least one item';

  @override
  String maxStockLabel(String stock) {
    return 'Max: $stock';
  }

  @override
  String idPrefix(String id) {
    return 'ID -- $id';
  }

  @override
  String get totalPrice => 'Total Price';

  @override
  String get qtyHint => 'Qty';

  @override
  String get myStoreCatalog => 'My Store Catalog';

  @override
  String get activeProducts => 'Active Products';

  @override
  String get potentialProfit => 'Potential Profit';

  @override
  String get searchCatalogHint => 'Search catalog...';

  @override
  String get activeOnly => 'Active Only';

  @override
  String get addProduct => 'Add Product';

  @override
  String get addProducts => 'Add Products';

  @override
  String get addProductsGoToOffers =>
      'To add products, go to Suppliers Offers section.';

  @override
  String get goToOffers => 'Go to Offers';

  @override
  String get noProductsInCatalog => 'No products in catalog';

  @override
  String get addProductToGetStarted => 'Add a product to get started';

  @override
  String estProfitLabel(String amount) {
    return 'Est. Profit: \$$amount';
  }

  @override
  String get itemDeleteType => 'Item';

  @override
  String get offerUpdatedSuccess => 'Offer updated successfully';

  @override
  String get catalogItemUpdatedSuccess => 'Catalog item updated successfully';

  @override
  String get supplierOffers => 'Supplier Offers';

  @override
  String get totalOffers => 'Total offers';

  @override
  String get allOffersReceived => 'All offers received';

  @override
  String get availableOffers => 'Available offers';

  @override
  String get readyToReview => 'Ready to review';

  @override
  String get searchProductsOrSuppliersHint => 'Search products or suppliers...';

  @override
  String get filterByCategory => 'Filter by Category';

  @override
  String get categoryAll => 'All';

  @override
  String get categoryBeverages => 'Beverages';

  @override
  String get categorySnacks => 'Snacks';

  @override
  String get categoryFruits => 'Fruits';

  @override
  String get categoryVegetables => 'Vegetables';

  @override
  String get categoryDairy => 'Dairy';

  @override
  String get categoryEggs => 'Eggs';

  @override
  String get buyPriceMultiline => 'Buy\nPrice';

  @override
  String get noResultsFound => 'No results found';

  @override
  String get offerAddedSuccess => 'Offer added successfully';

  @override
  String get inventoryOverview => 'Inventory Overview';

  @override
  String get totalItems => 'Total Items';

  @override
  String get outOfStock => 'Out of Stock';

  @override
  String get searchProductsHint => 'Search Products...';

  @override
  String allItemsWithCount(int count) {
    return 'All Items ($count)';
  }

  @override
  String lowStockWithCount(int count) {
    return 'Low Stock ($count)';
  }

  @override
  String outOfStockWithCount(int count) {
    return 'Out of Stock ($count)';
  }

  @override
  String get noItemsFound => 'No items found';

  @override
  String get tryAdjustSearchOrFilter => 'Try adjusting your search or filter.';

  @override
  String get stockAddedSuccess => 'Stock added successfully';

  @override
  String get addStock => 'Add Stock';

  @override
  String get stockLevel => 'Stock Level';

  @override
  String get minStock => 'Min Stock';

  @override
  String get lastUpdated => 'Last Updated';

  @override
  String get stockDetails => 'Stock Details';

  @override
  String get stockInfo => 'Stock Info';

  @override
  String get storeProduct => 'Store Product';

  @override
  String get supplierProduct => 'Supplier Product';

  @override
  String get stockQty => 'Stock Qty';

  @override
  String get totalIncome => 'Total Income';

  @override
  String get totalExpenses => 'Total Expenses';

  @override
  String get currentBalance => 'Current Balance';

  @override
  String get transactionHistory => 'Transaction History';

  @override
  String get noTransactionsYet => 'No transactions yet';

  @override
  String ledgerRefLabel(String type, String id) {
    return 'Ref. $type-$id';
  }

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get pdfSavedSuccess => 'PDF saved successfully';

  @override
  String get savePdf => 'Save PDF';

  @override
  String get sharePdf => 'Share PDF';

  @override
  String get pdfStoreLedgerReport => 'STORE LEDGER REPORT';

  @override
  String pdfStoreName(String storeName) {
    return 'Store Name: $storeName';
  }

  @override
  String pdfGeneratedAt(String dateTime) {
    return 'Generated At: $dateTime';
  }

  @override
  String get pdfSummary => 'SUMMARY';

  @override
  String pdfTotalCredits(String amount) {
    return 'Total Credits : \$$amount';
  }

  @override
  String pdfTotalDebits(String amount) {
    return 'Total Debits : \$$amount';
  }

  @override
  String pdfBalance(String amount) {
    return 'Balance : \$$amount';
  }

  @override
  String get pdfColDate => 'Date';

  @override
  String get pdfColOrder => 'Order';

  @override
  String get pdfColType => 'Type';

  @override
  String get pdfColAmount => 'Amount';

  @override
  String get pdfColNotes => 'Notes';

  @override
  String get langEnglish => 'English';

  @override
  String get langGerman => 'Deutsch';

  @override
  String get langSpanish => 'Español';

  @override
  String get langFrench => 'Français';

  @override
  String get langDutch => 'Nederlands';

  @override
  String get langPortuguese => 'Português';

  @override
  String get langRussian => 'Русский';

  @override
  String get langTurkish => 'Türkçe';
}
