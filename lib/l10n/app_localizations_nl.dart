// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'B2B App';

  @override
  String get storeFallbackTitle => 'Winkel';

  @override
  String get navHome => 'Start';

  @override
  String get navOffers => 'Aanbiedingen';

  @override
  String get navCatalog => 'Catalogus';

  @override
  String get navOrders => 'Bestellingen';

  @override
  String get navLedger => 'Grootboek';

  @override
  String get navStock => 'Voorraad';

  @override
  String get pageNotFound => 'Pagina niet gevonden';

  @override
  String get save => 'Opslaan';

  @override
  String get cancel => 'Annuleren';

  @override
  String get delete => 'Verwijderen';

  @override
  String get close => 'Sluiten';

  @override
  String get update => 'Bijwerken';

  @override
  String get submit => 'Verzenden';

  @override
  String get add => 'Toevoegen';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';

  @override
  String get tryAgain => 'Opnieuw proberen';

  @override
  String get tryAgainLater => 'Later opnieuw proberen';

  @override
  String get viewAll => 'Alles weergeven';

  @override
  String get details => 'Details';

  @override
  String get export => 'Exporteren';

  @override
  String get preview => 'Voorbeeld';

  @override
  String get status => 'Status';

  @override
  String get active => 'Actief';

  @override
  String get inactive => 'Inactief';

  @override
  String get pending => 'In behandeling';

  @override
  String get approved => 'Goedgekeurd';

  @override
  String get preparing => 'In voorbereiding';

  @override
  String get received => 'Ontvangen';

  @override
  String get submitted => 'Ingediend';

  @override
  String get cancelled => 'Geannuleerd';

  @override
  String get all => 'Alle';

  @override
  String get buyPrice => 'Inkoopprijs';

  @override
  String get sellPrice => 'Verkoopprijs';

  @override
  String get stock => 'Voorraad';

  @override
  String get profit => 'Winst';

  @override
  String get profitPerUnit => 'Winst/eenheid';

  @override
  String get quantity => 'Aantal';

  @override
  String get unitPrice => 'Stukprijs';

  @override
  String get sellerName => 'Naam verkoper';

  @override
  String get phone => 'Telefoon';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Adres';

  @override
  String get name => 'Naam';

  @override
  String get password => 'Wachtwoord';

  @override
  String get category => 'Categorie';

  @override
  String get product => 'Product';

  @override
  String get supplier => 'Leverancier';

  @override
  String get description => 'Omschrijving';

  @override
  String get created => 'Aangemaakt';

  @override
  String get updated => 'Bijgewerkt';

  @override
  String get credit => 'Credit';

  @override
  String get debit => 'Debet';

  @override
  String get income => 'Inkomsten';

  @override
  String get expenses => 'Uitgaven';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get instagram => 'Instagram';

  @override
  String get facebook => 'Facebook';

  @override
  String get telegram => 'Telegram';

  @override
  String get language => 'Taal';

  @override
  String get selectLanguage => 'Taal selecteren';

  @override
  String deleteTypedTitle(String type) {
    return 'Verwijder $type';
  }

  @override
  String deleteTypedConfirmMessage(String type) {
    return 'Weet u zeker dat u het volgende wilt verwijderen: $type?';
  }

  @override
  String get doubleBackToExit => 'Tik nogmaals om de app te sluiten';

  @override
  String get browseOffers => 'Aanbiedingen bekijken';

  @override
  String get quickSale => 'Snelle verkoop';

  @override
  String get updateCatalogItem => 'Catalogusartikel bijwerken';

  @override
  String get addOfferToCatalog => 'Aanbieding aan catalogus toevoegen';

  @override
  String get priceHintZero => '0.00';

  @override
  String get emailRequired => 'E-mailadres is verplicht';

  @override
  String get emailInvalid => 'Voer een geldig e-mailadres in';

  @override
  String get passwordRequired => 'Wachtwoord is verplicht';

  @override
  String get passwordMinLength =>
      'Het wachtwoord moet minimaal 8 tekens bevatten';

  @override
  String get passwordNeedsUppercase =>
      'Het wachtwoord moet minimaal 1 hoofdletter bevatten';

  @override
  String get passwordNeedsLowercase =>
      'Het wachtwoord moet minimaal 1 kleine letter bevatten';

  @override
  String get passwordNeedsNumber =>
      'Het wachtwoord moet minimaal 1 cijfer bevatten';

  @override
  String get phoneRequired => 'Telefoonnummer is verplicht';

  @override
  String get phoneInvalid => 'Voer een geldig telefoonnummer in';

  @override
  String fieldRequired(String fieldName) {
    return '$fieldName is verplicht';
  }

  @override
  String fieldMinLengthTwo(String fieldName) {
    return '$fieldName moet minimaal 2 tekens bevatten';
  }

  @override
  String fieldLettersOnly(String fieldName) {
    return '$fieldName mag alleen letters, spaties en koppeltekens bevatten';
  }

  @override
  String get fieldNameDefault => 'Naam';

  @override
  String get ownerNameField => 'Naam eigenaar';

  @override
  String get fieldDefault => 'Veld';

  @override
  String get storeNameRequired => 'Winkelnaam is verplicht';

  @override
  String get storeNameMinLength =>
      'De winkelnaam moet minimaal 2 tekens bevatten';

  @override
  String get storeNameMaxLength =>
      'De winkelnaam mag niet langer zijn dan 100 tekens';

  @override
  String get addressMinLength => 'Het adres moet minimaal 5 tekens bevatten';

  @override
  String get passwordsDoNotMatch => 'De wachtwoorden komen niet overeen';

  @override
  String get welcomeBack => 'Welkom terug';

  @override
  String get welcomeBackExclaim => 'Welkom terug!';

  @override
  String get signInSubtitle => 'Meld u aan bij uw supermarktaccount';

  @override
  String get emailAddressRequiredLabel => 'E-mailadres *';

  @override
  String get emailHint => 'store@example.com';

  @override
  String get passwordRequiredLabel => 'Wachtwoord *';

  @override
  String get enterPasswordHint => 'Voer uw wachtwoord in';

  @override
  String get rememberMe => 'Aangemeld blijven';

  @override
  String get forgotPassword => 'Wachtwoord vergeten?';

  @override
  String get signIn => 'Aanmelden';

  @override
  String get dontHaveAccount => 'Hebt u nog geen account?';

  @override
  String get createAccountLink => 'Account aanmaken';

  @override
  String get loginSuccess => 'Aanmelden geslaagd!';

  @override
  String get createAccount => 'Account aanmaken';

  @override
  String get registerSubtitle => 'Registreer het account van uw winkel';

  @override
  String get storeNameRequiredLabel => 'Winkelnaam *';

  @override
  String get storeNameHint => 'Mijn winkel';

  @override
  String get ownerNameRequiredLabel => 'Naam eigenaar *';

  @override
  String get ownerNameHint => 'Eigenaar';

  @override
  String get phoneRequiredLabel => 'Telefoon *';

  @override
  String get phoneHint => '0999999999';

  @override
  String get emailRequiredLabel => 'E-mail *';

  @override
  String get registerEmailHint => 'store1@example.com';

  @override
  String get passwordHintExample => 'password123';

  @override
  String get confirmPasswordRequiredLabel => 'Wachtwoord bevestigen *';

  @override
  String get confirmPasswordHint => 'Bevestig uw wachtwoord';

  @override
  String get alreadyHaveAccount => 'Hebt u al een account?';

  @override
  String get registrationSuccess => 'Registratie geslaagd!';

  @override
  String get demoAccount => 'Demo-account';

  @override
  String get pleaseEnterPassword => 'Voer een wachtwoord in';

  @override
  String passwordSentToAdmin(String password) {
    return 'Het wachtwoord \"$password\" is ter verificatie naar de beheerder verzonden';
  }

  @override
  String get contactEmailSnack => 'E-mail: helaliadnan877@gmail.com';

  @override
  String get contactWhatsappSnack => 'WhatsApp: +963 985 198 014';

  @override
  String get recoverPassword => 'Wachtwoord herstellen';

  @override
  String get recoverPasswordSubtitle => 'Kies hoe u uw account wilt herstellen';

  @override
  String get submitAPassword => 'Een wachtwoord indienen';

  @override
  String get submitPasswordHelpText =>
      'Als u uw wachtwoord niet meer weet, geef dan het laatste wachtwoord op dat u zich herinnert of een wachtwoord dat daarop lijkt en verzend het';

  @override
  String get rememberedPasswordHint =>
      'Voer het wachtwoord in dat u zich herinnert';

  @override
  String get sendPassword => 'Wachtwoord verzenden';

  @override
  String get contactAdministrator => 'Contact opnemen met de beheerder';

  @override
  String get contactAdminHelpText =>
      'Neem contact met ons op via e-mail of WhatsApp voor handmatige hulp bij het herstellen van uw wachtwoord';

  @override
  String get supportEmail => 'helaliadnan877@gmail.com';

  @override
  String get supportWhatsappWithLabel => '+963 985 198 014 (WhatsApp)';

  @override
  String get supportWhatsapp => '+963985198014';

  @override
  String get backToSignIn => '← Terug naar aanmelden';

  @override
  String get homeOverviewSubtitle => 'Dit is uw bedrijfsoverzicht voor vandaag';

  @override
  String get quickActions => 'Snelle acties';

  @override
  String get manageCatalog => 'Catalogus beheren';

  @override
  String get viewLedger => 'Grootboek bekijken';

  @override
  String get keyMetrics => 'Kerncijfers';

  @override
  String get recentOrders => 'Recente bestellingen';

  @override
  String orderWithId(String id) {
    return 'Bestelling $id';
  }

  @override
  String errorWithMessage(String error) {
    return 'Fout: $error';
  }

  @override
  String get revenueToday => 'Omzet vandaag';

  @override
  String get totalOrders => 'Totaal aantal bestellingen';

  @override
  String get salesToday => 'Verkopen vandaag';

  @override
  String get profitMargin => 'Winstmarge';

  @override
  String get lowStock => 'Lage voorraad';

  @override
  String get itemsNeedRestocking => 'Artikelen moeten worden aangevuld';

  @override
  String get ordersToProcess => 'Te verwerken bestellingen';

  @override
  String get metricDecrease => 'daling';

  @override
  String get metricIncrease => 'stijging';

  @override
  String metricChangeNote(String percent, String label) {
    return '$percent% $label';
  }

  @override
  String get logout => 'Afmelden';

  @override
  String get profileUpdatedSuccess => 'Profiel is bijgewerkt';

  @override
  String get updateProfile => 'Profiel bijwerken';

  @override
  String get storeName => 'Winkelnaam';

  @override
  String get ownerName => 'Naam eigenaar';

  @override
  String get settingsAndPreferences => 'Instellingen en voorkeuren';

  @override
  String get editProfile => 'Profiel bewerken';

  @override
  String get updateStoreInformation => 'Winkelgegevens bijwerken';

  @override
  String get notifications => 'Meldingen';

  @override
  String get manageAlertsAndUpdates => 'Waarschuwingen en updates beheren';

  @override
  String get appearance => 'Weergave';

  @override
  String get lightModeEnabled => 'Lichte modus ingeschakeld';

  @override
  String get darkModeEnabled => 'Donkere modus ingeschakeld';

  @override
  String get preferences => 'Voorkeuren';

  @override
  String get preferencesSubtitle => 'Taal, valuta, enz.';

  @override
  String get supportAndLegal => 'Ondersteuning en juridisch';

  @override
  String get helpAndSupport => 'Help en ondersteuning';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get darkMode => 'Donkere modus';

  @override
  String get storeInformation => 'Winkelgegevens';

  @override
  String storeIdLabel(String id) {
    return 'ID: SM--$id';
  }

  @override
  String get privacyPolicyIntro =>
      'In dit Privacybeleid wordt uitgelegd hoe onze B2B-e-commerceapplicatie uw gegevens verzamelt, gebruikt en beschermt.';

  @override
  String get privacySectionCollectTitle => '1. Gegevens die wij verzamelen';

  @override
  String get privacySectionCollectBody =>
      'Wij kunnen bedrijfsgegevens verzamelen, zoals bedrijfsnaam, contactgegevens, e-mailadres en transactiegegevens. Daarnaast verzamelen wij technische gegevens zoals het apparaattype en gebruiksstatistieken.';

  @override
  String get privacySectionUseTitle => '2. Hoe wij gegevens gebruiken';

  @override
  String get privacySectionUseBody =>
      'Wij gebruiken uw gegevens om diensten te leveren, transacties te verwerken, het platform te verbeteren en updates of ondersteuning te communiceren.';

  @override
  String get privacySectionSharingTitle => '3. Delen van gegevens';

  @override
  String get privacySectionSharingBody =>
      'Wij verkopen uw gegevens niet. Wij delen gegevens uitsluitend met vertrouwde partners om het platform te laten werken of om te voldoen aan wettelijke verplichtingen.';

  @override
  String get privacySectionSecurityTitle => '4. Beveiliging';

  @override
  String get privacySectionSecurityBody =>
      'Wij nemen sterke beveiligingsmaatregelen om uw gegevens te beschermen, waaronder versleuteling en beveiligde servers.';

  @override
  String get privacySectionRightsTitle => '5. Uw rechten';

  @override
  String get privacySectionRightsBody =>
      'U kunt op elk moment inzage, correctie of verwijdering van uw gegevens aanvragen door contact met ons op te nemen.';

  @override
  String get privacySectionContactTitle => '6. Contact opnemen';

  @override
  String get privacySectionContactBody =>
      'Hebt u vragen? Neem dan contact met ons op via:\n\nE-mail: helaliadnan877@gmail.com';

  @override
  String get privacyLastUpdated => 'Laatst bijgewerkt: 2025';

  @override
  String get purchaseOrders => 'Inkooporders';

  @override
  String get pendingApproval => 'Wacht op goedkeuring';

  @override
  String get totalValue => 'Totale waarde';

  @override
  String get allOrders => 'Alle bestellingen';

  @override
  String ordersFoundCount(int count) {
    return '$count bestellingen gevonden';
  }

  @override
  String totalAmountLabel(String amount) {
    return 'Totaal: \$$amount';
  }

  @override
  String get noOrdersFound => 'Geen bestellingen gevonden';

  @override
  String orderPoPrefix(String id) {
    return 'Bestelling #PO-$id';
  }

  @override
  String get orderDeleteType => 'de bestelling';

  @override
  String itemsCount(int count) {
    return '$count artikelen';
  }

  @override
  String get loadingActiveOffers => 'Actieve aanbiedingen laden...';

  @override
  String failedLoadActiveOffers(String error) {
    return 'Kan actieve aanbiedingen niet laden: $error';
  }

  @override
  String get selectOffersToCreateOrder =>
      'Selecteer aanbiedingen om een bestelling te maken';

  @override
  String get totalOrderPrice => 'Totale bestelprijs';

  @override
  String get orderNoteHint => 'Opmerking bij bestelling';

  @override
  String get createOrder => 'Bestelling maken';

  @override
  String ordersCreatedSuccess(int count) {
    return '$count bestelling(en) succesvol aangemaakt!';
  }

  @override
  String get fixQuantityErrors =>
      'Corrigeer de fouten in de aantallen voordat u verzendt';

  @override
  String get selectAtLeastOneItem => 'Selecteer ten minste één artikel';

  @override
  String maxStockLabel(String stock) {
    return 'Max.: $stock';
  }

  @override
  String idPrefix(String id) {
    return 'ID -- $id';
  }

  @override
  String get totalPrice => 'Totaalprijs';

  @override
  String get qtyHint => 'Aantal';

  @override
  String get myStoreCatalog => 'Catalogus van mijn winkel';

  @override
  String get activeProducts => 'Actieve producten';

  @override
  String get potentialProfit => 'Potentiële winst';

  @override
  String get searchCatalogHint => 'Catalogus doorzoeken...';

  @override
  String get activeOnly => 'Alleen actief';

  @override
  String get addProduct => 'Product toevoegen';

  @override
  String get addProducts => 'Producten toevoegen';

  @override
  String get addProductsGoToOffers =>
      'Ga naar het gedeelte Leveranciersaanbiedingen om producten toe te voegen.';

  @override
  String get goToOffers => 'Naar de aanbiedingen';

  @override
  String get noProductsInCatalog => 'Geen producten in de catalogus';

  @override
  String get addProductToGetStarted => 'Voeg een product toe om te beginnen';

  @override
  String estProfitLabel(String amount) {
    return 'Gesch. winst: \$$amount';
  }

  @override
  String get itemDeleteType => 'het artikel';

  @override
  String get offerUpdatedSuccess => 'Aanbieding is bijgewerkt';

  @override
  String get catalogItemUpdatedSuccess => 'Catalogusartikel is bijgewerkt';

  @override
  String get catalogItemDeletedSuccess => 'Catalogusartikel is verwijderd';

  @override
  String get supplierOffers => 'Leveranciersaanbiedingen';

  @override
  String get totalOffers => 'Totaal aantal aanbiedingen';

  @override
  String get allOffersReceived => 'Alle aanbiedingen ontvangen';

  @override
  String get availableOffers => 'Beschikbare aanbiedingen';

  @override
  String get readyToReview => 'Klaar om te beoordelen';

  @override
  String get searchProductsOrSuppliersHint =>
      'Zoek producten of leveranciers...';

  @override
  String get filterByCategory => 'Filteren op categorie';

  @override
  String get categoryAll => 'Alle';

  @override
  String get categoryBeverages => 'Dranken';

  @override
  String get categorySnacks => 'Snacks';

  @override
  String get categoryFruits => 'Fruit';

  @override
  String get categoryVegetables => 'Groenten';

  @override
  String get categoryDairy => 'Zuivel';

  @override
  String get categoryEggs => 'Eieren';

  @override
  String get buyPriceMultiline => 'Inkoop-\nprijs';

  @override
  String get noResultsFound => 'Geen resultaten gevonden';

  @override
  String get offerAddedSuccess => 'Aanbieding is toegevoegd';

  @override
  String get inventoryOverview => 'Voorraadoverzicht';

  @override
  String get totalItems => 'Totaal aantal artikelen';

  @override
  String get outOfStock => 'Niet op voorraad';

  @override
  String get searchProductsHint => 'Producten zoeken...';

  @override
  String allItemsWithCount(int count) {
    return 'Alle artikelen ($count)';
  }

  @override
  String lowStockWithCount(int count) {
    return 'Lage voorraad ($count)';
  }

  @override
  String outOfStockWithCount(int count) {
    return 'Niet op voorraad ($count)';
  }

  @override
  String get noItemsFound => 'Geen artikelen gevonden';

  @override
  String get tryAdjustSearchOrFilter => 'Pas uw zoekopdracht of filter aan.';

  @override
  String get stockAddedSuccess => 'Voorraad is toegevoegd';

  @override
  String get addStock => 'Voorraad toevoegen';

  @override
  String get stockLevel => 'Voorraadniveau';

  @override
  String get minStock => 'Minimale voorraad';

  @override
  String get lastUpdated => 'Laatst bijgewerkt';

  @override
  String get stockDetails => 'Voorraadgegevens';

  @override
  String get stockInfo => 'Voorraadinformatie';

  @override
  String get storeProduct => 'Winkelproduct';

  @override
  String get supplierProduct => 'Leveranciersproduct';

  @override
  String get stockQty => 'Voorraadaantal';

  @override
  String get totalIncome => 'Totale inkomsten';

  @override
  String get totalExpenses => 'Totale uitgaven';

  @override
  String get currentBalance => 'Huidig saldo';

  @override
  String get transactionHistory => 'Transactiegeschiedenis';

  @override
  String get noTransactionsYet => 'Nog geen transacties';

  @override
  String ledgerRefLabel(String type, String id) {
    return 'Ref. $type-$id';
  }

  @override
  String get somethingWentWrong => 'Er is iets misgegaan';

  @override
  String get pdfSavedSuccess => 'PDF is opgeslagen';

  @override
  String get savePdf => 'PDF opslaan';

  @override
  String get sharePdf => 'PDF delen';

  @override
  String get pdfStoreLedgerReport => 'GROOTBOEKRAPPORT VAN DE WINKEL';

  @override
  String pdfStoreName(String storeName) {
    return 'Winkelnaam: $storeName';
  }

  @override
  String pdfGeneratedAt(String dateTime) {
    return 'Gegenereerd op: $dateTime';
  }

  @override
  String get pdfSummary => 'SAMENVATTING';

  @override
  String pdfTotalCredits(String amount) {
    return 'Totaal credit : \$$amount';
  }

  @override
  String pdfTotalDebits(String amount) {
    return 'Totaal debet : \$$amount';
  }

  @override
  String pdfBalance(String amount) {
    return 'Saldo : \$$amount';
  }

  @override
  String get pdfColDate => 'Datum';

  @override
  String get pdfColOrder => 'Bestelling';

  @override
  String get pdfColType => 'Type';

  @override
  String get pdfColAmount => 'Bedrag';

  @override
  String get pdfColNotes => 'Opmerkingen';

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
      'Je bent offline. We blijven je opgeslagen gegevens tonen.';

  @override
  String get connectionRestoredMessage =>
      'Je bent weer online. De nieuwste gegevens worden geladen.';
}
