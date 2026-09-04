// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'B2B App';

  @override
  String get storeFallbackTitle => 'Geschäft';

  @override
  String get navHome => 'Start';

  @override
  String get navOffers => 'Angebote';

  @override
  String get navCatalog => 'Katalog';

  @override
  String get navOrders => 'Bestellungen';

  @override
  String get navLedger => 'Kassenbuch';

  @override
  String get navStock => 'Bestand';

  @override
  String get pageNotFound => 'Seite nicht gefunden';

  @override
  String get save => 'Speichern';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get close => 'Schließen';

  @override
  String get update => 'Aktualisieren';

  @override
  String get submit => 'Absenden';

  @override
  String get add => 'Hinzufügen';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nein';

  @override
  String get tryAgain => 'Erneut versuchen';

  @override
  String get tryAgainLater => 'Später erneut versuchen';

  @override
  String get viewAll => 'Alle anzeigen';

  @override
  String get details => 'Details';

  @override
  String get export => 'Exportieren';

  @override
  String get preview => 'Vorschau';

  @override
  String get status => 'Status';

  @override
  String get active => 'Aktiv';

  @override
  String get inactive => 'Inaktiv';

  @override
  String get pending => 'Ausstehend';

  @override
  String get approved => 'Genehmigt';

  @override
  String get preparing => 'In Vorbereitung';

  @override
  String get received => 'Erhalten';

  @override
  String get submitted => 'Eingereicht';

  @override
  String get cancelled => 'Storniert';

  @override
  String get all => 'Alle';

  @override
  String get buyPrice => 'Einkaufspreis';

  @override
  String get sellPrice => 'Verkaufspreis';

  @override
  String get stock => 'Bestand';

  @override
  String get profit => 'Gewinn';

  @override
  String get profitPerUnit => 'Gewinn/Einheit';

  @override
  String get quantity => 'Menge';

  @override
  String get unitPrice => 'Stückpreis';

  @override
  String get sellerName => 'Name des Verkäufers';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-Mail';

  @override
  String get address => 'Adresse';

  @override
  String get name => 'Name';

  @override
  String get password => 'Passwort';

  @override
  String get category => 'Kategorie';

  @override
  String get product => 'Produkt';

  @override
  String get supplier => 'Lieferant';

  @override
  String get description => 'Beschreibung';

  @override
  String get created => 'Erstellt';

  @override
  String get updated => 'Aktualisiert';

  @override
  String get credit => 'Gutschrift';

  @override
  String get debit => 'Belastung';

  @override
  String get income => 'Einnahmen';

  @override
  String get expenses => 'Ausgaben';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get instagram => 'Instagram';

  @override
  String get facebook => 'Facebook';

  @override
  String get telegram => 'Telegram';

  @override
  String get language => 'Sprache';

  @override
  String get selectLanguage => 'Sprache auswählen';

  @override
  String deleteTypedTitle(String type) {
    return '$type löschen';
  }

  @override
  String deleteTypedConfirmMessage(String type) {
    return 'Möchten Sie Folgendes wirklich löschen: $type?';
  }

  @override
  String get doubleBackToExit => 'Tippen Sie erneut, um die App zu schließen';

  @override
  String get browseOffers => 'Angebote durchsuchen';

  @override
  String get quickSale => 'Schnellverkauf';

  @override
  String get updateCatalogItem => 'Katalogartikel aktualisieren';

  @override
  String get addOfferToCatalog => 'Angebot zum Katalog hinzufügen';

  @override
  String get priceHintZero => '0.00';

  @override
  String get emailRequired => 'E-Mail-Adresse ist erforderlich';

  @override
  String get emailInvalid => 'Bitte geben Sie eine gültige E-Mail-Adresse ein';

  @override
  String get passwordRequired => 'Passwort ist erforderlich';

  @override
  String get passwordMinLength =>
      'Das Passwort muss mindestens 8 Zeichen lang sein';

  @override
  String get passwordNeedsUppercase =>
      'Das Passwort muss mindestens 1 Großbuchstaben enthalten';

  @override
  String get passwordNeedsLowercase =>
      'Das Passwort muss mindestens 1 Kleinbuchstaben enthalten';

  @override
  String get passwordNeedsNumber =>
      'Das Passwort muss mindestens 1 Ziffer enthalten';

  @override
  String get phoneRequired => 'Telefonnummer ist erforderlich';

  @override
  String get phoneInvalid => 'Bitte geben Sie eine gültige Telefonnummer ein';

  @override
  String fieldRequired(String fieldName) {
    return '$fieldName ist erforderlich';
  }

  @override
  String fieldMinLengthTwo(String fieldName) {
    return '$fieldName muss mindestens 2 Zeichen lang sein';
  }

  @override
  String fieldLettersOnly(String fieldName) {
    return '$fieldName darf nur Buchstaben, Leerzeichen und Bindestriche enthalten';
  }

  @override
  String get fieldNameDefault => 'Name';

  @override
  String get ownerNameField => 'Name des Inhabers';

  @override
  String get fieldDefault => 'Feld';

  @override
  String get storeNameRequired => 'Geschäftsname ist erforderlich';

  @override
  String get storeNameMinLength =>
      'Der Geschäftsname muss mindestens 2 Zeichen lang sein';

  @override
  String get storeNameMaxLength =>
      'Der Geschäftsname darf 100 Zeichen nicht überschreiten';

  @override
  String get addressMinLength =>
      'Die Adresse muss mindestens 5 Zeichen lang sein';

  @override
  String get passwordsDoNotMatch => 'Die Passwörter stimmen nicht überein';

  @override
  String get welcomeBack => 'Willkommen zurück';

  @override
  String get welcomeBackExclaim => 'Willkommen zurück!';

  @override
  String get signInSubtitle => 'Melden Sie sich bei Ihrem Supermarktkonto an';

  @override
  String get emailAddressRequiredLabel => 'E-Mail-Adresse *';

  @override
  String get emailHint => 'store@example.com';

  @override
  String get passwordRequiredLabel => 'Passwort *';

  @override
  String get enterPasswordHint => 'Geben Sie Ihr Passwort ein';

  @override
  String get rememberMe => 'Angemeldet bleiben';

  @override
  String get forgotPassword => 'Passwort vergessen?';

  @override
  String get signIn => 'Anmelden';

  @override
  String get dontHaveAccount => 'Sie haben noch kein Konto?';

  @override
  String get createAccountLink => 'Konto erstellen';

  @override
  String get loginSuccess => 'Anmeldung erfolgreich!';

  @override
  String get createAccount => 'Konto erstellen';

  @override
  String get registerSubtitle => 'Registrieren Sie Ihr Geschäftskonto';

  @override
  String get storeNameRequiredLabel => 'Geschäftsname *';

  @override
  String get storeNameHint => 'Mein Geschäft';

  @override
  String get ownerNameRequiredLabel => 'Name des Inhabers *';

  @override
  String get ownerNameHint => 'Inhaber';

  @override
  String get phoneRequiredLabel => 'Telefon *';

  @override
  String get phoneHint => '0999999999';

  @override
  String get emailRequiredLabel => 'E-Mail *';

  @override
  String get registerEmailHint => 'store1@example.com';

  @override
  String get passwordHintExample => 'password123';

  @override
  String get confirmPasswordRequiredLabel => 'Passwort bestätigen *';

  @override
  String get confirmPasswordHint => 'Bestätigen Sie Ihr Passwort';

  @override
  String get alreadyHaveAccount => 'Sie haben bereits ein Konto?';

  @override
  String get registrationSuccess => 'Registrierung erfolgreich!';

  @override
  String get demoAccount => 'Demokonto';

  @override
  String get pleaseEnterPassword => 'Bitte geben Sie ein Passwort ein';

  @override
  String passwordSentToAdmin(String password) {
    return 'Das Passwort \"$password\" wurde zur Überprüfung an den Administrator gesendet';
  }

  @override
  String get contactEmailSnack => 'E-Mail: helaliadnan877@gmail.com';

  @override
  String get contactWhatsappSnack => 'WhatsApp: +963 985 198 014';

  @override
  String get recoverPassword => 'Passwort wiederherstellen';

  @override
  String get recoverPasswordSubtitle =>
      'Wählen Sie aus, wie Sie Ihr Konto wiederherstellen möchten';

  @override
  String get submitAPassword => 'Passwort einreichen';

  @override
  String get submitPasswordHelpText =>
      'Wenn Sie sich nicht an Ihr Passwort erinnern können, geben Sie das letzte Passwort an, an das Sie sich erinnern, oder ein Passwort, das diesem ähnelt, und senden Sie es ab';

  @override
  String get rememberedPasswordHint =>
      'Geben Sie das Passwort ein, an das Sie sich erinnern';

  @override
  String get sendPassword => 'Passwort senden';

  @override
  String get contactAdministrator => 'Administrator kontaktieren';

  @override
  String get contactAdminHelpText =>
      'Kontaktieren Sie uns per E-Mail oder WhatsApp, um Unterstützung bei der manuellen Passwortwiederherstellung zu erhalten';

  @override
  String get supportEmail => 'helaliadnan877@gmail.com';

  @override
  String get supportWhatsappWithLabel => '+963 985 198 014 (WhatsApp)';

  @override
  String get supportWhatsapp => '+963985198014';

  @override
  String get backToSignIn => '← Zurück zur Anmeldung';

  @override
  String get homeOverviewSubtitle =>
      'Hier ist Ihre Geschäftsübersicht für heute';

  @override
  String get quickActions => 'Schnellaktionen';

  @override
  String get manageCatalog => 'Katalog verwalten';

  @override
  String get viewLedger => 'Kassenbuch anzeigen';

  @override
  String get keyMetrics => 'Kennzahlen';

  @override
  String get recentOrders => 'Letzte Bestellungen';

  @override
  String orderWithId(String id) {
    return 'Bestellung $id';
  }

  @override
  String errorWithMessage(String error) {
    return 'Fehler: $error';
  }

  @override
  String get revenueToday => 'Umsatz heute';

  @override
  String get totalOrders => 'Bestellungen gesamt';

  @override
  String get salesToday => 'Verkäufe heute';

  @override
  String get profitMargin => 'Gewinnmarge';

  @override
  String get lowStock => 'Niedriger Bestand';

  @override
  String get itemsNeedRestocking => 'Artikel müssen nachbestellt werden';

  @override
  String get ordersToProcess => 'Zu bearbeitende Bestellungen';

  @override
  String get metricDecrease => 'Rückgang';

  @override
  String get metricIncrease => 'Anstieg';

  @override
  String metricChangeNote(String percent, String label) {
    return '$percent% $label';
  }

  @override
  String get logout => 'Abmelden';

  @override
  String get profileUpdatedSuccess => 'Profil erfolgreich aktualisiert';

  @override
  String get updateProfile => 'Profil aktualisieren';

  @override
  String get storeName => 'Geschäftsname';

  @override
  String get ownerName => 'Name des Inhabers';

  @override
  String get settingsAndPreferences => 'Einstellungen und Präferenzen';

  @override
  String get editProfile => 'Profil bearbeiten';

  @override
  String get updateStoreInformation => 'Geschäftsinformationen aktualisieren';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get manageAlertsAndUpdates =>
      'Hinweise und Aktualisierungen verwalten';

  @override
  String get appearance => 'Darstellung';

  @override
  String get lightModeEnabled => 'Heller Modus aktiviert';

  @override
  String get darkModeEnabled => 'Dunkler Modus aktiviert';

  @override
  String get preferences => 'Präferenzen';

  @override
  String get preferencesSubtitle => 'Sprache, Währung usw.';

  @override
  String get supportAndLegal => 'Support und Rechtliches';

  @override
  String get helpAndSupport => 'Hilfe und Support';

  @override
  String get privacyPolicy => 'Datenschutzerklärung';

  @override
  String get darkMode => 'Dunkler Modus';

  @override
  String get storeInformation => 'Geschäftsinformationen';

  @override
  String storeIdLabel(String id) {
    return 'ID: SM--$id';
  }

  @override
  String get privacyPolicyIntro =>
      'Diese Datenschutzerklärung erläutert, wie unsere B2B-E-Commerce-Anwendung Ihre Informationen erhebt, verwendet und schützt.';

  @override
  String get privacySectionCollectTitle => '1. Informationen, die wir erheben';

  @override
  String get privacySectionCollectBody =>
      'Wir können Geschäftsinformationen wie Firmenname, Kontaktdaten, E-Mail-Adresse und Transaktionsdaten erheben. Darüber hinaus erfassen wir technische Daten wie Gerätetyp und Nutzungsanalysen.';

  @override
  String get privacySectionUseTitle => '2. Wie wir Informationen verwenden';

  @override
  String get privacySectionUseBody =>
      'Wir verwenden Ihre Daten, um Dienste bereitzustellen, Transaktionen abzuwickeln, die Plattform zu verbessern und über Aktualisierungen oder Support zu informieren.';

  @override
  String get privacySectionSharingTitle => '3. Weitergabe von Daten';

  @override
  String get privacySectionSharingBody =>
      'Wir verkaufen Ihre Daten nicht. Wir geben Informationen ausschließlich an vertrauenswürdige Partner weiter, um die Plattform zu betreiben oder gesetzliche Verpflichtungen zu erfüllen.';

  @override
  String get privacySectionSecurityTitle => '4. Sicherheit';

  @override
  String get privacySectionSecurityBody =>
      'Wir setzen strenge Sicherheitsmaßnahmen ein, um Ihre Daten zu schützen, einschließlich Verschlüsselung und sicherer Server.';

  @override
  String get privacySectionRightsTitle => '5. Ihre Rechte';

  @override
  String get privacySectionRightsBody =>
      'Sie können jederzeit Auskunft, Berichtigung oder Löschung Ihrer Daten verlangen, indem Sie uns kontaktieren.';

  @override
  String get privacySectionContactTitle => '6. Kontakt';

  @override
  String get privacySectionContactBody =>
      'Wenn Sie Fragen haben, kontaktieren Sie uns unter:\n\nE-Mail: helaliadnan877@gmail.com';

  @override
  String get privacyLastUpdated => 'Zuletzt aktualisiert: 2025';

  @override
  String get purchaseOrders => 'Bestellaufträge';

  @override
  String get pendingApproval => 'Genehmigung ausstehend';

  @override
  String get totalValue => 'Gesamtwert';

  @override
  String get allOrders => 'Alle Bestellungen';

  @override
  String ordersFoundCount(int count) {
    return '$count Bestellungen gefunden';
  }

  @override
  String totalAmountLabel(String amount) {
    return 'Gesamt: \$$amount';
  }

  @override
  String get noOrdersFound => 'Keine Bestellungen gefunden';

  @override
  String orderPoPrefix(String id) {
    return 'Bestellung #PO-$id';
  }

  @override
  String get orderDeleteType => 'Bestellung';

  @override
  String itemsCount(int count) {
    return '$count Artikel';
  }

  @override
  String get loadingActiveOffers => 'Aktive Angebote werden geladen...';

  @override
  String failedLoadActiveOffers(String error) {
    return 'Aktive Angebote konnten nicht geladen werden: $error';
  }

  @override
  String get selectOffersToCreateOrder =>
      'Angebote auswählen, um eine Bestellung zu erstellen';

  @override
  String get totalOrderPrice => 'Gesamtbestellwert';

  @override
  String get orderNoteHint => 'Bestellnotiz';

  @override
  String get createOrder => 'Bestellung erstellen';

  @override
  String ordersCreatedSuccess(int count) {
    return '$count Bestellung(en) erfolgreich erstellt!';
  }

  @override
  String get fixQuantityErrors =>
      'Bitte beheben Sie die Mengenfehler vor dem Absenden';

  @override
  String get selectAtLeastOneItem =>
      'Bitte wählen Sie mindestens einen Artikel aus';

  @override
  String maxStockLabel(String stock) {
    return 'Max.: $stock';
  }

  @override
  String idPrefix(String id) {
    return 'ID -- $id';
  }

  @override
  String get totalPrice => 'Gesamtpreis';

  @override
  String get qtyHint => 'Anz.';

  @override
  String get myStoreCatalog => 'Mein Geschäftskatalog';

  @override
  String get activeProducts => 'Aktive Produkte';

  @override
  String get potentialProfit => 'Potenzieller Gewinn';

  @override
  String get searchCatalogHint => 'Katalog durchsuchen...';

  @override
  String get activeOnly => 'Nur aktive';

  @override
  String get addProduct => 'Produkt hinzufügen';

  @override
  String get addProducts => 'Produkte hinzufügen';

  @override
  String get addProductsGoToOffers =>
      'Um Produkte hinzuzufügen, wechseln Sie zum Bereich Lieferantenangebote.';

  @override
  String get goToOffers => 'Zu den Angeboten';

  @override
  String get noProductsInCatalog => 'Keine Produkte im Katalog';

  @override
  String get addProductToGetStarted =>
      'Fügen Sie ein Produkt hinzu, um zu beginnen';

  @override
  String estProfitLabel(String amount) {
    return 'Gesch. Gewinn: \$$amount';
  }

  @override
  String get itemDeleteType => 'Artikel';

  @override
  String get offerUpdatedSuccess => 'Angebot erfolgreich aktualisiert';

  @override
  String get catalogItemUpdatedSuccess =>
      'Katalogartikel erfolgreich aktualisiert';

  @override
  String get supplierOffers => 'Lieferantenangebote';

  @override
  String get totalOffers => 'Angebote gesamt';

  @override
  String get allOffersReceived => 'Alle Angebote erhalten';

  @override
  String get availableOffers => 'Verfügbare Angebote';

  @override
  String get readyToReview => 'Bereit zur Prüfung';

  @override
  String get searchProductsOrSuppliersHint =>
      'Produkte oder Lieferanten suchen...';

  @override
  String get filterByCategory => 'Nach Kategorie filtern';

  @override
  String get categoryAll => 'Alle';

  @override
  String get categoryBeverages => 'Getränke';

  @override
  String get categorySnacks => 'Snacks';

  @override
  String get categoryFruits => 'Obst';

  @override
  String get categoryVegetables => 'Gemüse';

  @override
  String get categoryDairy => 'Milchprodukte';

  @override
  String get categoryEggs => 'Eier';

  @override
  String get buyPriceMultiline => 'Einkaufs-\npreis';

  @override
  String get noResultsFound => 'Keine Ergebnisse gefunden';

  @override
  String get offerAddedSuccess => 'Angebot erfolgreich hinzugefügt';

  @override
  String get inventoryOverview => 'Bestandsübersicht';

  @override
  String get totalItems => 'Artikel gesamt';

  @override
  String get outOfStock => 'Nicht vorrätig';

  @override
  String get searchProductsHint => 'Produkte suchen...';

  @override
  String allItemsWithCount(int count) {
    return 'Alle Artikel ($count)';
  }

  @override
  String lowStockWithCount(int count) {
    return 'Niedriger Bestand ($count)';
  }

  @override
  String outOfStockWithCount(int count) {
    return 'Nicht vorrätig ($count)';
  }

  @override
  String get noItemsFound => 'Keine Artikel gefunden';

  @override
  String get tryAdjustSearchOrFilter =>
      'Passen Sie Ihre Suche oder Ihren Filter an.';

  @override
  String get stockAddedSuccess => 'Bestand erfolgreich hinzugefügt';

  @override
  String get addStock => 'Bestand hinzufügen';

  @override
  String get stockLevel => 'Bestandsniveau';

  @override
  String get minStock => 'Mindestbestand';

  @override
  String get lastUpdated => 'Zuletzt aktualisiert';

  @override
  String get stockDetails => 'Bestandsdetails';

  @override
  String get stockInfo => 'Bestandsinformationen';

  @override
  String get storeProduct => 'Geschäftsprodukt';

  @override
  String get supplierProduct => 'Lieferantenprodukt';

  @override
  String get stockQty => 'Bestandsmenge';

  @override
  String get totalIncome => 'Gesamteinnahmen';

  @override
  String get totalExpenses => 'Gesamtausgaben';

  @override
  String get currentBalance => 'Aktueller Saldo';

  @override
  String get transactionHistory => 'Transaktionsverlauf';

  @override
  String get noTransactionsYet => 'Noch keine Transaktionen';

  @override
  String ledgerRefLabel(String type, String id) {
    return 'Ref. $type-$id';
  }

  @override
  String get somethingWentWrong => 'Etwas ist schiefgelaufen';

  @override
  String get pdfSavedSuccess => 'PDF erfolgreich gespeichert';

  @override
  String get savePdf => 'PDF speichern';

  @override
  String get sharePdf => 'PDF teilen';

  @override
  String get pdfStoreLedgerReport => 'KASSENBUCHBERICHT DES GESCHÄFTS';

  @override
  String pdfStoreName(String storeName) {
    return 'Geschäftsname: $storeName';
  }

  @override
  String pdfGeneratedAt(String dateTime) {
    return 'Erstellt am: $dateTime';
  }

  @override
  String get pdfSummary => 'ZUSAMMENFASSUNG';

  @override
  String pdfTotalCredits(String amount) {
    return 'Gutschriften gesamt : \$$amount';
  }

  @override
  String pdfTotalDebits(String amount) {
    return 'Belastungen gesamt : \$$amount';
  }

  @override
  String pdfBalance(String amount) {
    return 'Saldo : \$$amount';
  }

  @override
  String get pdfColDate => 'Datum';

  @override
  String get pdfColOrder => 'Bestellung';

  @override
  String get pdfColType => 'Typ';

  @override
  String get pdfColAmount => 'Betrag';

  @override
  String get pdfColNotes => 'Notizen';

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

  @override
  String get offlineCachedDataMessage =>
      'Du bist offline. Wir zeigen weiterhin deine gespeicherten Daten.';

  @override
  String get connectionRestoredMessage =>
      'Du bist wieder online. Die neuesten Daten werden geladen.';
}
