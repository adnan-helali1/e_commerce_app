// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'B2B App';

  @override
  String get storeFallbackTitle => 'Magasin';

  @override
  String get navHome => 'Accueil';

  @override
  String get navOffers => 'Offres';

  @override
  String get navCatalog => 'Catalogue';

  @override
  String get navOrders => 'Commandes';

  @override
  String get navLedger => 'Registre';

  @override
  String get navStock => 'Stock';

  @override
  String get pageNotFound => 'Page introuvable';

  @override
  String get save => 'Enregistrer';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get close => 'Fermer';

  @override
  String get update => 'Mettre à jour';

  @override
  String get submit => 'Envoyer';

  @override
  String get add => 'Ajouter';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get tryAgain => 'Réessayer';

  @override
  String get tryAgainLater => 'Réessayer plus tard';

  @override
  String get viewAll => 'Tout afficher';

  @override
  String get details => 'Détails';

  @override
  String get export => 'Exporter';

  @override
  String get preview => 'Aperçu';

  @override
  String get status => 'Statut';

  @override
  String get active => 'Actif';

  @override
  String get inactive => 'Inactif';

  @override
  String get pending => 'En attente';

  @override
  String get approved => 'Approuvé';

  @override
  String get preparing => 'En préparation';

  @override
  String get received => 'Reçu';

  @override
  String get submitted => 'Soumis';

  @override
  String get cancelled => 'Annulé';

  @override
  String get all => 'Tous';

  @override
  String get buyPrice => 'Prix d\'achat';

  @override
  String get sellPrice => 'Prix de vente';

  @override
  String get stock => 'Stock';

  @override
  String get profit => 'Bénéfice';

  @override
  String get profitPerUnit => 'Bénéfice/unité';

  @override
  String get quantity => 'Quantité';

  @override
  String get unitPrice => 'Prix unitaire';

  @override
  String get sellerName => 'Nom du vendeur';

  @override
  String get phone => 'Téléphone';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Adresse';

  @override
  String get name => 'Nom';

  @override
  String get password => 'Mot de passe';

  @override
  String get category => 'Catégorie';

  @override
  String get product => 'Produit';

  @override
  String get supplier => 'Fournisseur';

  @override
  String get description => 'Description';

  @override
  String get created => 'Créé';

  @override
  String get updated => 'Mis à jour';

  @override
  String get credit => 'Crédit';

  @override
  String get debit => 'Débit';

  @override
  String get income => 'Revenus';

  @override
  String get expenses => 'Dépenses';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get instagram => 'Instagram';

  @override
  String get facebook => 'Facebook';

  @override
  String get telegram => 'Telegram';

  @override
  String get language => 'Langue';

  @override
  String get selectLanguage => 'Sélectionner la langue';

  @override
  String deleteTypedTitle(String type) {
    return 'Supprimer $type';
  }

  @override
  String deleteTypedConfirmMessage(String type) {
    return 'Voulez-vous vraiment supprimer $type ?';
  }

  @override
  String get doubleBackToExit =>
      'Appuyez encore une fois pour fermer l\'application';

  @override
  String get browseOffers => 'Parcourir les offres';

  @override
  String get quickSale => 'Vente rapide';

  @override
  String get updateCatalogItem => 'Mettre à jour l\'article du catalogue';

  @override
  String get addOfferToCatalog => 'Ajouter l\'offre au catalogue';

  @override
  String get priceHintZero => '0.00';

  @override
  String get emailRequired => 'L\'adresse e-mail est obligatoire';

  @override
  String get emailInvalid => 'Veuillez saisir une adresse e-mail valide';

  @override
  String get passwordRequired => 'Le mot de passe est obligatoire';

  @override
  String get passwordMinLength =>
      'Le mot de passe doit contenir au moins 8 caractères';

  @override
  String get passwordNeedsUppercase =>
      'Le mot de passe doit contenir au moins 1 lettre majuscule';

  @override
  String get passwordNeedsLowercase =>
      'Le mot de passe doit contenir au moins 1 lettre minuscule';

  @override
  String get passwordNeedsNumber =>
      'Le mot de passe doit contenir au moins 1 chiffre';

  @override
  String get phoneRequired => 'Le numéro de téléphone est obligatoire';

  @override
  String get phoneInvalid => 'Veuillez saisir un numéro de téléphone valide';

  @override
  String fieldRequired(String fieldName) {
    return '$fieldName est obligatoire';
  }

  @override
  String fieldMinLengthTwo(String fieldName) {
    return '$fieldName doit contenir au moins 2 caractères';
  }

  @override
  String fieldLettersOnly(String fieldName) {
    return '$fieldName ne peut contenir que des lettres, des espaces et des tirets';
  }

  @override
  String get fieldNameDefault => 'Nom';

  @override
  String get ownerNameField => 'Nom du propriétaire';

  @override
  String get fieldDefault => 'Champ';

  @override
  String get storeNameRequired => 'Le nom du magasin est obligatoire';

  @override
  String get storeNameMinLength =>
      'Le nom du magasin doit contenir au moins 2 caractères';

  @override
  String get storeNameMaxLength =>
      'Le nom du magasin ne doit pas dépasser 100 caractères';

  @override
  String get addressMinLength =>
      'L\'adresse doit contenir au moins 5 caractères';

  @override
  String get passwordsDoNotMatch => 'Les mots de passe ne correspondent pas';

  @override
  String get welcomeBack => 'Bon retour';

  @override
  String get welcomeBackExclaim => 'Bon retour !';

  @override
  String get signInSubtitle => 'Connectez-vous à votre compte de supermarché';

  @override
  String get emailAddressRequiredLabel => 'Adresse e-mail *';

  @override
  String get emailHint => 'store@example.com';

  @override
  String get passwordRequiredLabel => 'Mot de passe *';

  @override
  String get enterPasswordHint => 'Saisissez votre mot de passe';

  @override
  String get rememberMe => 'Se souvenir de moi';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get signIn => 'Se connecter';

  @override
  String get dontHaveAccount => 'Vous n\'avez pas de compte ?';

  @override
  String get createAccountLink => 'Créer un compte';

  @override
  String get loginSuccess => 'Connexion réussie !';

  @override
  String get createAccount => 'Créer un compte';

  @override
  String get registerSubtitle => 'Enregistrez le compte de votre magasin';

  @override
  String get storeNameRequiredLabel => 'Nom du magasin *';

  @override
  String get storeNameHint => 'Mon magasin';

  @override
  String get ownerNameRequiredLabel => 'Nom du propriétaire *';

  @override
  String get ownerNameHint => 'Propriétaire';

  @override
  String get phoneRequiredLabel => 'Téléphone *';

  @override
  String get phoneHint => '0999999999';

  @override
  String get emailRequiredLabel => 'E-mail *';

  @override
  String get registerEmailHint => 'store1@example.com';

  @override
  String get passwordHintExample => 'password123';

  @override
  String get confirmPasswordRequiredLabel => 'Confirmer le mot de passe *';

  @override
  String get confirmPasswordHint => 'Confirmez votre mot de passe';

  @override
  String get alreadyHaveAccount => 'Vous avez déjà un compte ?';

  @override
  String get registrationSuccess => 'Inscription réussie !';

  @override
  String get demoAccount => 'Compte de démonstration';

  @override
  String get pleaseEnterPassword => 'Veuillez saisir un mot de passe';

  @override
  String passwordSentToAdmin(String password) {
    return 'Le mot de passe \"$password\" a été envoyé à l\'administrateur pour vérification';
  }

  @override
  String get contactEmailSnack => 'E-mail : helaliadnan877@gmail.com';

  @override
  String get contactWhatsappSnack => 'WhatsApp : +963 985 198 014';

  @override
  String get recoverPassword => 'Récupérer le mot de passe';

  @override
  String get recoverPasswordSubtitle =>
      'Choisissez comment vous souhaitez récupérer votre compte';

  @override
  String get submitAPassword => 'Soumettre un mot de passe';

  @override
  String get submitPasswordHelpText =>
      'Si vous ne vous souvenez pas de votre mot de passe, indiquez le dernier mot de passe dont vous vous souvenez ou un mot de passe qui lui ressemble, puis envoyez-le';

  @override
  String get rememberedPasswordHint =>
      'Saisissez le mot de passe dont vous vous souvenez';

  @override
  String get sendPassword => 'Envoyer le mot de passe';

  @override
  String get contactAdministrator => 'Contacter l\'administrateur';

  @override
  String get contactAdminHelpText =>
      'Contactez-nous par e-mail ou WhatsApp pour obtenir une assistance manuelle à la récupération du mot de passe';

  @override
  String get supportEmail => 'helaliadnan877@gmail.com';

  @override
  String get supportWhatsappWithLabel => '+963 985 198 014 (WhatsApp)';

  @override
  String get supportWhatsapp => '+963985198014';

  @override
  String get backToSignIn => '← Retour à la connexion';

  @override
  String get homeOverviewSubtitle =>
      'Voici l\'aperçu de votre activité pour aujourd\'hui';

  @override
  String get quickActions => 'Actions rapides';

  @override
  String get manageCatalog => 'Gérer le catalogue';

  @override
  String get viewLedger => 'Consulter le registre';

  @override
  String get keyMetrics => 'Indicateurs clés';

  @override
  String get recentOrders => 'Commandes récentes';

  @override
  String orderWithId(String id) {
    return 'Commande $id';
  }

  @override
  String errorWithMessage(String error) {
    return 'Erreur : $error';
  }

  @override
  String get revenueToday => 'Chiffre d\'affaires du jour';

  @override
  String get totalOrders => 'Total des commandes';

  @override
  String get salesToday => 'Ventes du jour';

  @override
  String get profitMargin => 'Marge bénéficiaire';

  @override
  String get lowStock => 'Stock faible';

  @override
  String get itemsNeedRestocking => 'Articles à réapprovisionner';

  @override
  String get ordersToProcess => 'Commandes à traiter';

  @override
  String get metricDecrease => 'de baisse';

  @override
  String get metricIncrease => 'de hausse';

  @override
  String metricChangeNote(String percent, String label) {
    return '$percent% $label';
  }

  @override
  String get logout => 'Déconnexion';

  @override
  String get profileUpdatedSuccess => 'Profil mis à jour avec succès';

  @override
  String get updateProfile => 'Mettre à jour le profil';

  @override
  String get storeName => 'Nom du magasin';

  @override
  String get ownerName => 'Nom du propriétaire';

  @override
  String get settingsAndPreferences => 'Paramètres et préférences';

  @override
  String get editProfile => 'Modifier le profil';

  @override
  String get updateStoreInformation =>
      'Mettre à jour les informations du magasin';

  @override
  String get notifications => 'Notifications';

  @override
  String get manageAlertsAndUpdates => 'Gérer les alertes et les mises à jour';

  @override
  String get appearance => 'Apparence';

  @override
  String get lightModeEnabled => 'Mode clair activé';

  @override
  String get darkModeEnabled => 'Mode sombre activé';

  @override
  String get preferences => 'Préférences';

  @override
  String get preferencesSubtitle => 'Langue, devise, etc.';

  @override
  String get supportAndLegal => 'Assistance et mentions légales';

  @override
  String get helpAndSupport => 'Aide et assistance';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get darkMode => 'Mode sombre';

  @override
  String get storeInformation => 'Informations du magasin';

  @override
  String storeIdLabel(String id) {
    return 'ID : SM--$id';
  }

  @override
  String get privacyPolicyIntro =>
      'La présente Politique de confidentialité explique comment notre application de commerce électronique B2B collecte, utilise et protège vos informations.';

  @override
  String get privacySectionCollectTitle =>
      '1. Informations que nous collectons';

  @override
  String get privacySectionCollectBody =>
      'Nous pouvons collecter des informations professionnelles telles que le nom de la société, les coordonnées, l\'adresse e-mail et les données de transaction. Nous collectons également des données techniques comme le type d\'appareil et les statistiques d\'utilisation.';

  @override
  String get privacySectionUseTitle => '2. Utilisation des informations';

  @override
  String get privacySectionUseBody =>
      'Nous utilisons vos données pour fournir nos services, traiter les transactions, améliorer la plateforme et communiquer les mises à jour ou l\'assistance.';

  @override
  String get privacySectionSharingTitle => '3. Partage des données';

  @override
  String get privacySectionSharingBody =>
      'Nous ne vendons pas vos données. Nous pouvons partager des informations avec des partenaires de confiance uniquement pour exploiter la plateforme ou respecter des obligations légales.';

  @override
  String get privacySectionSecurityTitle => '4. Sécurité';

  @override
  String get privacySectionSecurityBody =>
      'Nous mettons en œuvre des mesures de sécurité rigoureuses pour protéger vos données, notamment le chiffrement et des serveurs sécurisés.';

  @override
  String get privacySectionRightsTitle => '5. Vos droits';

  @override
  String get privacySectionRightsBody =>
      'Vous pouvez demander à tout moment l\'accès à vos données, leur rectification ou leur suppression en nous contactant.';

  @override
  String get privacySectionContactTitle => '6. Nous contacter';

  @override
  String get privacySectionContactBody =>
      'Pour toute question, contactez-nous à l\'adresse suivante :\n\nE-mail : helaliadnan877@gmail.com';

  @override
  String get privacyLastUpdated => 'Dernière mise à jour : 2025';

  @override
  String get purchaseOrders => 'Bons de commande';

  @override
  String get pendingApproval => 'En attente d\'approbation';

  @override
  String get totalValue => 'Valeur totale';

  @override
  String get allOrders => 'Toutes les commandes';

  @override
  String ordersFoundCount(int count) {
    return '$count commandes trouvées';
  }

  @override
  String totalAmountLabel(String amount) {
    return 'Total : \$$amount';
  }

  @override
  String get noOrdersFound => 'Aucune commande trouvée';

  @override
  String orderPoPrefix(String id) {
    return 'Commande #PO-$id';
  }

  @override
  String get orderDeleteType => 'la commande';

  @override
  String itemsCount(int count) {
    return '$count articles';
  }

  @override
  String get loadingActiveOffers => 'Chargement des offres actives...';

  @override
  String failedLoadActiveOffers(String error) {
    return 'Échec du chargement des offres actives : $error';
  }

  @override
  String get selectOffersToCreateOrder =>
      'Sélectionnez des offres pour créer une commande';

  @override
  String get totalOrderPrice => 'Prix total de la commande';

  @override
  String get orderNoteHint => 'Note de commande';

  @override
  String get createOrder => 'Créer une commande';

  @override
  String ordersCreatedSuccess(int count) {
    return '$count commande(s) créée(s) avec succès !';
  }

  @override
  String get fixQuantityErrors =>
      'Veuillez corriger les erreurs de quantité avant d\'envoyer';

  @override
  String get selectAtLeastOneItem =>
      'Veuillez sélectionner au moins un article';

  @override
  String maxStockLabel(String stock) {
    return 'Max : $stock';
  }

  @override
  String idPrefix(String id) {
    return 'ID -- $id';
  }

  @override
  String get totalPrice => 'Prix total';

  @override
  String get qtyHint => 'Qté';

  @override
  String get myStoreCatalog => 'Catalogue de mon magasin';

  @override
  String get activeProducts => 'Produits actifs';

  @override
  String get potentialProfit => 'Bénéfice potentiel';

  @override
  String get searchCatalogHint => 'Rechercher dans le catalogue...';

  @override
  String get activeOnly => 'Actifs uniquement';

  @override
  String get addProduct => 'Ajouter un produit';

  @override
  String get addProducts => 'Ajouter des produits';

  @override
  String get addProductsGoToOffers =>
      'Pour ajouter des produits, accédez à la section Offres des fournisseurs.';

  @override
  String get goToOffers => 'Accéder aux offres';

  @override
  String get noProductsInCatalog => 'Aucun produit dans le catalogue';

  @override
  String get addProductToGetStarted => 'Ajoutez un produit pour commencer';

  @override
  String estProfitLabel(String amount) {
    return 'Bénéfice est. : \$$amount';
  }

  @override
  String get itemDeleteType => 'l\'article';

  @override
  String get offerUpdatedSuccess => 'Offre mise à jour avec succès';

  @override
  String get catalogItemUpdatedSuccess =>
      'Article du catalogue mis à jour avec succès';

  @override
  String get catalogItemDeletedSuccess =>
      'Article du catalogue supprimé avec succès';

  @override
  String get supplierOffers => 'Offres des fournisseurs';

  @override
  String get totalOffers => 'Total des offres';

  @override
  String get allOffersReceived => 'Toutes les offres reçues';

  @override
  String get availableOffers => 'Offres disponibles';

  @override
  String get readyToReview => 'Prêtes à être examinées';

  @override
  String get searchProductsOrSuppliersHint =>
      'Rechercher des produits ou des fournisseurs...';

  @override
  String get filterByCategory => 'Filtrer par catégorie';

  @override
  String get categoryAll => 'Toutes';

  @override
  String get categoryBeverages => 'Boissons';

  @override
  String get categorySnacks => 'En-cas';

  @override
  String get categoryFruits => 'Fruits';

  @override
  String get categoryVegetables => 'Légumes';

  @override
  String get categoryDairy => 'Produits laitiers';

  @override
  String get categoryEggs => 'Œufs';

  @override
  String get buyPriceMultiline => 'Prix\nd\'achat';

  @override
  String get noResultsFound => 'Aucun résultat trouvé';

  @override
  String get offerAddedSuccess => 'Offre ajoutée avec succès';

  @override
  String get inventoryOverview => 'Aperçu de l\'inventaire';

  @override
  String get totalItems => 'Total des articles';

  @override
  String get outOfStock => 'Rupture de stock';

  @override
  String get searchProductsHint => 'Rechercher des produits...';

  @override
  String allItemsWithCount(int count) {
    return 'Tous les articles ($count)';
  }

  @override
  String lowStockWithCount(int count) {
    return 'Stock faible ($count)';
  }

  @override
  String outOfStockWithCount(int count) {
    return 'Rupture de stock ($count)';
  }

  @override
  String get noItemsFound => 'Aucun article trouvé';

  @override
  String get tryAdjustSearchOrFilter =>
      'Essayez d\'ajuster votre recherche ou votre filtre.';

  @override
  String get stockAddedSuccess => 'Stock ajouté avec succès';

  @override
  String get addStock => 'Ajouter du stock';

  @override
  String get stockLevel => 'Niveau de stock';

  @override
  String get minStock => 'Stock minimum';

  @override
  String get lastUpdated => 'Dernière mise à jour';

  @override
  String get stockDetails => 'Détails du stock';

  @override
  String get stockInfo => 'Informations sur le stock';

  @override
  String get storeProduct => 'Produit du magasin';

  @override
  String get supplierProduct => 'Produit du fournisseur';

  @override
  String get stockQty => 'Qté en stock';

  @override
  String get totalIncome => 'Revenus totaux';

  @override
  String get totalExpenses => 'Dépenses totales';

  @override
  String get currentBalance => 'Solde actuel';

  @override
  String get transactionHistory => 'Historique des transactions';

  @override
  String get noTransactionsYet => 'Aucune transaction pour le moment';

  @override
  String ledgerRefLabel(String type, String id) {
    return 'Réf. $type-$id';
  }

  @override
  String get somethingWentWrong => 'Une erreur est survenue';

  @override
  String get pdfSavedSuccess => 'PDF enregistré avec succès';

  @override
  String get savePdf => 'Enregistrer le PDF';

  @override
  String get sharePdf => 'Partager le PDF';

  @override
  String get pdfStoreLedgerReport => 'RAPPORT DU REGISTRE DU MAGASIN';

  @override
  String pdfStoreName(String storeName) {
    return 'Nom du magasin : $storeName';
  }

  @override
  String pdfGeneratedAt(String dateTime) {
    return 'Généré le : $dateTime';
  }

  @override
  String get pdfSummary => 'RÉSUMÉ';

  @override
  String pdfTotalCredits(String amount) {
    return 'Total des crédits : \$$amount';
  }

  @override
  String pdfTotalDebits(String amount) {
    return 'Total des débits : \$$amount';
  }

  @override
  String pdfBalance(String amount) {
    return 'Solde : \$$amount';
  }

  @override
  String get pdfColDate => 'Date';

  @override
  String get pdfColOrder => 'Commande';

  @override
  String get pdfColType => 'Type';

  @override
  String get pdfColAmount => 'Montant';

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

  @override
  String get offlineCachedDataMessage =>
      'Vous êtes hors ligne. Nous continuons d’afficher vos données enregistrées.';

  @override
  String get connectionRestoredMessage =>
      'Vous êtes de nouveau en ligne. Actualisation des dernières données.';
}
