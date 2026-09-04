// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'B2B App';

  @override
  String get storeFallbackTitle => 'Mağaza';

  @override
  String get navHome => 'Ana Sayfa';

  @override
  String get navOffers => 'Teklifler';

  @override
  String get navCatalog => 'Katalog';

  @override
  String get navOrders => 'Siparişler';

  @override
  String get navLedger => 'Defter';

  @override
  String get navStock => 'Stok';

  @override
  String get pageNotFound => 'Sayfa bulunamadı';

  @override
  String get save => 'Kaydet';

  @override
  String get cancel => 'İptal';

  @override
  String get delete => 'Sil';

  @override
  String get close => 'Kapat';

  @override
  String get update => 'Güncelle';

  @override
  String get submit => 'Gönder';

  @override
  String get add => 'Ekle';

  @override
  String get yes => 'Evet';

  @override
  String get no => 'Hayır';

  @override
  String get tryAgain => 'Tekrar Dene';

  @override
  String get tryAgainLater => 'Daha Sonra Tekrar Deneyin';

  @override
  String get viewAll => 'Tümünü Görüntüle';

  @override
  String get details => 'Ayrıntılar';

  @override
  String get export => 'Dışa Aktar';

  @override
  String get preview => 'Önizleme';

  @override
  String get status => 'Durum';

  @override
  String get active => 'Aktif';

  @override
  String get inactive => 'Pasif';

  @override
  String get pending => 'Beklemede';

  @override
  String get approved => 'Onaylandı';

  @override
  String get preparing => 'Hazırlanıyor';

  @override
  String get received => 'Teslim alındı';

  @override
  String get submitted => 'Gönderildi';

  @override
  String get cancelled => 'İptal edildi';

  @override
  String get all => 'Tümü';

  @override
  String get buyPrice => 'Alış Fiyatı';

  @override
  String get sellPrice => 'Satış Fiyatı';

  @override
  String get stock => 'Stok';

  @override
  String get profit => 'Kâr';

  @override
  String get profitPerUnit => 'Kâr/Birim';

  @override
  String get quantity => 'Miktar';

  @override
  String get unitPrice => 'Birim Fiyat';

  @override
  String get sellerName => 'Satıcı Adı';

  @override
  String get phone => 'Telefon';

  @override
  String get email => 'E-posta';

  @override
  String get address => 'Adres';

  @override
  String get name => 'Ad';

  @override
  String get password => 'Parola';

  @override
  String get category => 'Kategori';

  @override
  String get product => 'Ürün';

  @override
  String get supplier => 'Tedarikçi';

  @override
  String get description => 'Açıklama';

  @override
  String get created => 'Oluşturulma';

  @override
  String get updated => 'Güncellenme';

  @override
  String get credit => 'Alacak';

  @override
  String get debit => 'Borç';

  @override
  String get income => 'Gelirler';

  @override
  String get expenses => 'Giderler';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get instagram => 'Instagram';

  @override
  String get facebook => 'Facebook';

  @override
  String get telegram => 'Telegram';

  @override
  String get language => 'Dil';

  @override
  String get selectLanguage => 'Dil Seçin';

  @override
  String deleteTypedTitle(String type) {
    return '$type Sil';
  }

  @override
  String deleteTypedConfirmMessage(String type) {
    return '$type silmek istediğinizden emin misiniz?';
  }

  @override
  String get doubleBackToExit =>
      'Uygulamayı kapatmak için bir kez daha dokunun';

  @override
  String get browseOffers => 'Teklifleri İncele';

  @override
  String get quickSale => 'Hızlı Satış';

  @override
  String get updateCatalogItem => 'Katalog Öğesini Güncelle';

  @override
  String get addOfferToCatalog => 'Teklifi Kataloğa Ekle';

  @override
  String get priceHintZero => '0.00';

  @override
  String get emailRequired => 'E-posta adresi gereklidir';

  @override
  String get emailInvalid => 'Lütfen geçerli bir e-posta adresi girin';

  @override
  String get passwordRequired => 'Parola gereklidir';

  @override
  String get passwordMinLength => 'Parola en az 8 karakter olmalıdır';

  @override
  String get passwordNeedsUppercase => 'Parola en az 1 büyük harf içermelidir';

  @override
  String get passwordNeedsLowercase => 'Parola en az 1 küçük harf içermelidir';

  @override
  String get passwordNeedsNumber => 'Parola en az 1 rakam içermelidir';

  @override
  String get phoneRequired => 'Telefon numarası gereklidir';

  @override
  String get phoneInvalid => 'Lütfen geçerli bir telefon numarası girin';

  @override
  String fieldRequired(String fieldName) {
    return '$fieldName gereklidir';
  }

  @override
  String fieldMinLengthTwo(String fieldName) {
    return '$fieldName en az 2 karakter olmalıdır';
  }

  @override
  String fieldLettersOnly(String fieldName) {
    return '$fieldName yalnızca harf, boşluk ve kısa çizgi içerebilir';
  }

  @override
  String get fieldNameDefault => 'Ad';

  @override
  String get ownerNameField => 'Sahip adı';

  @override
  String get fieldDefault => 'Alan';

  @override
  String get storeNameRequired => 'Mağaza adı gereklidir';

  @override
  String get storeNameMinLength => 'Mağaza adı en az 2 karakter olmalıdır';

  @override
  String get storeNameMaxLength => 'Mağaza adı 100 karakteri aşmamalıdır';

  @override
  String get addressMinLength => 'Adres en az 5 karakter olmalıdır';

  @override
  String get passwordsDoNotMatch => 'Parolalar eşleşmiyor';

  @override
  String get welcomeBack => 'Tekrar Hoş Geldiniz';

  @override
  String get welcomeBackExclaim => 'Tekrar hoş geldiniz!';

  @override
  String get signInSubtitle => 'Süpermarket hesabınıza giriş yapın';

  @override
  String get emailAddressRequiredLabel => 'E-posta Adresi *';

  @override
  String get emailHint => 'store@example.com';

  @override
  String get passwordRequiredLabel => 'Parola *';

  @override
  String get enterPasswordHint => 'Parolanızı girin';

  @override
  String get rememberMe => 'Beni hatırla';

  @override
  String get forgotPassword => 'Parolanızı mı unuttunuz?';

  @override
  String get signIn => 'Giriş Yap';

  @override
  String get dontHaveAccount => 'Hesabınız yok mu?';

  @override
  String get createAccountLink => 'Hesap oluştur';

  @override
  String get loginSuccess => 'Giriş başarılı!';

  @override
  String get createAccount => 'Hesap Oluştur';

  @override
  String get registerSubtitle => 'Mağaza hesabınızı kaydedin';

  @override
  String get storeNameRequiredLabel => 'Mağaza Adı *';

  @override
  String get storeNameHint => 'Mağazam';

  @override
  String get ownerNameRequiredLabel => 'Sahip Adı *';

  @override
  String get ownerNameHint => 'Sahip';

  @override
  String get phoneRequiredLabel => 'Telefon *';

  @override
  String get phoneHint => '0999999999';

  @override
  String get emailRequiredLabel => 'E-posta *';

  @override
  String get registerEmailHint => 'store1@example.com';

  @override
  String get passwordHintExample => 'password123';

  @override
  String get confirmPasswordRequiredLabel => 'Parolayı Onayla *';

  @override
  String get confirmPasswordHint => 'Parolanızı onaylayın';

  @override
  String get alreadyHaveAccount => 'Zaten hesabınız var mı?';

  @override
  String get registrationSuccess => 'Kayıt başarılı!';

  @override
  String get demoAccount => 'Demo Hesabı';

  @override
  String get pleaseEnterPassword => 'Lütfen bir parola girin';

  @override
  String passwordSentToAdmin(String password) {
    return '\"$password\" parolası doğrulama için yöneticiye gönderildi';
  }

  @override
  String get contactEmailSnack => 'E-posta: helaliadnan877@gmail.com';

  @override
  String get contactWhatsappSnack => 'WhatsApp: +963 985 198 014';

  @override
  String get recoverPassword => 'Parola Kurtarma';

  @override
  String get recoverPasswordSubtitle =>
      'Hesabınızı nasıl kurtarmak istediğinizi seçin';

  @override
  String get submitAPassword => 'Parola Gönder';

  @override
  String get submitPasswordHelpText =>
      'Parolanızı hatırlayamıyorsanız hatırladığınız son parolayı veya ona benzediğini düşündüğünüz bir parolayı yazıp gönderin';

  @override
  String get rememberedPasswordHint => 'Hatırladığınız parolayı girin';

  @override
  String get sendPassword => 'Parolayı Gönder';

  @override
  String get contactAdministrator => 'Yöneticiye Ulaşın';

  @override
  String get contactAdminHelpText =>
      'Manuel parola kurtarma desteği için bize e-posta veya WhatsApp üzerinden ulaşın';

  @override
  String get supportEmail => 'helaliadnan877@gmail.com';

  @override
  String get supportWhatsappWithLabel => '+963 985 198 014 (WhatsApp)';

  @override
  String get supportWhatsapp => '+963985198014';

  @override
  String get backToSignIn => '← Girişe Dön';

  @override
  String get homeOverviewSubtitle => 'Bugünkü işletme özetiniz burada';

  @override
  String get quickActions => 'Hızlı İşlemler';

  @override
  String get manageCatalog => 'Kataloğu Yönet';

  @override
  String get viewLedger => 'Defteri Görüntüle';

  @override
  String get keyMetrics => 'Temel Göstergeler';

  @override
  String get recentOrders => 'Son Siparişler';

  @override
  String orderWithId(String id) {
    return 'Sipariş $id';
  }

  @override
  String errorWithMessage(String error) {
    return 'Hata: $error';
  }

  @override
  String get revenueToday => 'Bugünkü Gelir';

  @override
  String get totalOrders => 'Toplam Sipariş';

  @override
  String get salesToday => 'Bugünkü Satışlar';

  @override
  String get profitMargin => 'Kâr Marjı';

  @override
  String get lowStock => 'Düşük Stok';

  @override
  String get itemsNeedRestocking => 'Yenilenmesi gereken ürünler';

  @override
  String get ordersToProcess => 'İşlenecek siparişler';

  @override
  String get metricDecrease => 'azalış';

  @override
  String get metricIncrease => 'artış';

  @override
  String metricChangeNote(String percent, String label) {
    return '$percent% $label';
  }

  @override
  String get logout => 'Çıkış Yap';

  @override
  String get profileUpdatedSuccess => 'Profil başarıyla güncellendi';

  @override
  String get updateProfile => 'Profili Güncelle';

  @override
  String get storeName => 'Mağaza Adı';

  @override
  String get ownerName => 'Sahip Adı';

  @override
  String get settingsAndPreferences => 'Ayarlar ve Tercihler';

  @override
  String get editProfile => 'Profili Düzenle';

  @override
  String get updateStoreInformation => 'Mağaza bilgilerini güncelleyin';

  @override
  String get notifications => 'Bildirimler';

  @override
  String get manageAlertsAndUpdates => 'Uyarıları ve güncellemeleri yönetin';

  @override
  String get appearance => 'Görünüm';

  @override
  String get lightModeEnabled => 'Açık mod etkin';

  @override
  String get darkModeEnabled => 'Koyu mod etkin';

  @override
  String get preferences => 'Tercihler';

  @override
  String get preferencesSubtitle => 'Dil, para birimi vb.';

  @override
  String get supportAndLegal => 'Destek ve Yasal';

  @override
  String get helpAndSupport => 'Yardım ve Destek';

  @override
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get darkMode => 'Koyu Mod';

  @override
  String get storeInformation => 'Mağaza Bilgileri';

  @override
  String storeIdLabel(String id) {
    return 'ID: SM--$id';
  }

  @override
  String get privacyPolicyIntro =>
      'Bu Gizlilik Politikası, B2B e-ticaret uygulamamızın bilgilerinizi nasıl topladığını, kullandığını ve koruduğunu açıklar.';

  @override
  String get privacySectionCollectTitle => '1. Topladığımız Bilgiler';

  @override
  String get privacySectionCollectBody =>
      'Şirket adı, iletişim bilgileri, e-posta adresi ve işlem verileri gibi ticari bilgileri toplayabiliriz. Ayrıca cihaz türü ve kullanım analizleri gibi teknik verileri de toplarız.';

  @override
  String get privacySectionUseTitle => '2. Bilgileri Nasıl Kullanırız';

  @override
  String get privacySectionUseBody =>
      'Verilerinizi hizmet sunmak, işlemleri gerçekleştirmek, platformu geliştirmek ve güncellemeler veya destek hakkında bilgi vermek için kullanırız.';

  @override
  String get privacySectionSharingTitle => '3. Veri Paylaşımı';

  @override
  String get privacySectionSharingBody =>
      'Verilerinizi satmayız. Bilgileri yalnızca platformu işletmek veya yasal yükümlülükleri yerine getirmek amacıyla güvenilir iş ortaklarıyla paylaşabiliriz.';

  @override
  String get privacySectionSecurityTitle => '4. Güvenlik';

  @override
  String get privacySectionSecurityBody =>
      'Verilerinizi korumak için şifreleme ve güvenli sunucular dâhil olmak üzere güçlü güvenlik önlemleri uygularız.';

  @override
  String get privacySectionRightsTitle => '5. Haklarınız';

  @override
  String get privacySectionRightsBody =>
      'Bizimle iletişime geçerek verilerinize erişim, düzeltme veya silme talebinde istediğiniz zaman bulunabilirsiniz.';

  @override
  String get privacySectionContactTitle => '6. Bize Ulaşın';

  @override
  String get privacySectionContactBody =>
      'Sorularınız varsa bize şu adresten ulaşın:\n\nE-posta: helaliadnan877@gmail.com';

  @override
  String get privacyLastUpdated => 'Son güncelleme: 2025';

  @override
  String get purchaseOrders => 'Satın Alma Siparişleri';

  @override
  String get pendingApproval => 'Onay Bekliyor';

  @override
  String get totalValue => 'Toplam Değer';

  @override
  String get allOrders => 'Tüm Siparişler';

  @override
  String ordersFoundCount(int count) {
    return '$count sipariş bulundu';
  }

  @override
  String totalAmountLabel(String amount) {
    return 'Toplam: \$$amount';
  }

  @override
  String get noOrdersFound => 'Sipariş bulunamadı';

  @override
  String orderPoPrefix(String id) {
    return 'Sipariş #PO-$id';
  }

  @override
  String get orderDeleteType => 'Siparişi';

  @override
  String itemsCount(int count) {
    return '$count ürün';
  }

  @override
  String get loadingActiveOffers => 'Aktif teklifler yükleniyor...';

  @override
  String failedLoadActiveOffers(String error) {
    return 'Aktif teklifler yüklenemedi: $error';
  }

  @override
  String get selectOffersToCreateOrder =>
      'Sipariş oluşturmak için teklifleri seçin';

  @override
  String get totalOrderPrice => 'Toplam Sipariş Tutarı';

  @override
  String get orderNoteHint => 'Sipariş notu';

  @override
  String get createOrder => 'Sipariş Oluştur';

  @override
  String ordersCreatedSuccess(int count) {
    return '$count sipariş başarıyla oluşturuldu!';
  }

  @override
  String get fixQuantityErrors =>
      'Göndermeden önce lütfen miktar hatalarını düzeltin';

  @override
  String get selectAtLeastOneItem => 'Lütfen en az bir ürün seçin';

  @override
  String maxStockLabel(String stock) {
    return 'Maks.: $stock';
  }

  @override
  String idPrefix(String id) {
    return 'ID -- $id';
  }

  @override
  String get totalPrice => 'Toplam Fiyat';

  @override
  String get qtyHint => 'Adet';

  @override
  String get myStoreCatalog => 'Mağaza Kataloğum';

  @override
  String get activeProducts => 'Aktif Ürünler';

  @override
  String get potentialProfit => 'Potansiyel Kâr';

  @override
  String get searchCatalogHint => 'Katalogda ara...';

  @override
  String get activeOnly => 'Yalnızca Aktif';

  @override
  String get addProduct => 'Ürün Ekle';

  @override
  String get addProducts => 'Ürünler Ekle';

  @override
  String get addProductsGoToOffers =>
      'Ürün eklemek için Tedarikçi Teklifleri bölümüne gidin.';

  @override
  String get goToOffers => 'Tekliflere Git';

  @override
  String get noProductsInCatalog => 'Katalogda ürün yok';

  @override
  String get addProductToGetStarted => 'Başlamak için bir ürün ekleyin';

  @override
  String estProfitLabel(String amount) {
    return 'Tah. Kâr: \$$amount';
  }

  @override
  String get itemDeleteType => 'Ürünü';

  @override
  String get offerUpdatedSuccess => 'Teklif başarıyla güncellendi';

  @override
  String get catalogItemUpdatedSuccess => 'Katalog öğesi başarıyla güncellendi';

  @override
  String get supplierOffers => 'Tedarikçi Teklifleri';

  @override
  String get totalOffers => 'Toplam teklif';

  @override
  String get allOffersReceived => 'Alınan tüm teklifler';

  @override
  String get availableOffers => 'Mevcut teklifler';

  @override
  String get readyToReview => 'İncelemeye hazır';

  @override
  String get searchProductsOrSuppliersHint => 'Ürün veya tedarikçi ara...';

  @override
  String get filterByCategory => 'Kategoriye Göre Filtrele';

  @override
  String get categoryAll => 'Tümü';

  @override
  String get categoryBeverages => 'İçecekler';

  @override
  String get categorySnacks => 'Atıştırmalıklar';

  @override
  String get categoryFruits => 'Meyveler';

  @override
  String get categoryVegetables => 'Sebzeler';

  @override
  String get categoryDairy => 'Süt Ürünleri';

  @override
  String get categoryEggs => 'Yumurta';

  @override
  String get buyPriceMultiline => 'Alış\nFiyatı';

  @override
  String get noResultsFound => 'Sonuç bulunamadı';

  @override
  String get offerAddedSuccess => 'Teklif başarıyla eklendi';

  @override
  String get inventoryOverview => 'Envanter Özeti';

  @override
  String get totalItems => 'Toplam Ürün';

  @override
  String get outOfStock => 'Stokta Yok';

  @override
  String get searchProductsHint => 'Ürün Ara...';

  @override
  String allItemsWithCount(int count) {
    return 'Tüm Ürünler ($count)';
  }

  @override
  String lowStockWithCount(int count) {
    return 'Düşük Stok ($count)';
  }

  @override
  String outOfStockWithCount(int count) {
    return 'Stokta Yok ($count)';
  }

  @override
  String get noItemsFound => 'Ürün bulunamadı';

  @override
  String get tryAdjustSearchOrFilter =>
      'Aramanızı veya filtrenizi değiştirmeyi deneyin.';

  @override
  String get stockAddedSuccess => 'Stok başarıyla eklendi';

  @override
  String get addStock => 'Stok Ekle';

  @override
  String get stockLevel => 'Stok Seviyesi';

  @override
  String get minStock => 'Minimum Stok';

  @override
  String get lastUpdated => 'Son Güncelleme';

  @override
  String get stockDetails => 'Stok Ayrıntıları';

  @override
  String get stockInfo => 'Stok Bilgisi';

  @override
  String get storeProduct => 'Mağaza Ürünü';

  @override
  String get supplierProduct => 'Tedarikçi Ürünü';

  @override
  String get stockQty => 'Stok Miktarı';

  @override
  String get totalIncome => 'Toplam Gelir';

  @override
  String get totalExpenses => 'Toplam Gider';

  @override
  String get currentBalance => 'Güncel Bakiye';

  @override
  String get transactionHistory => 'İşlem Geçmişi';

  @override
  String get noTransactionsYet => 'Henüz işlem yok';

  @override
  String ledgerRefLabel(String type, String id) {
    return 'Ref. $type-$id';
  }

  @override
  String get somethingWentWrong => 'Bir sorun oluştu';

  @override
  String get pdfSavedSuccess => 'PDF başarıyla kaydedildi';

  @override
  String get savePdf => 'PDF Kaydet';

  @override
  String get sharePdf => 'PDF Paylaş';

  @override
  String get pdfStoreLedgerReport => 'MAĞAZA DEFTER RAPORU';

  @override
  String pdfStoreName(String storeName) {
    return 'Mağaza Adı: $storeName';
  }

  @override
  String pdfGeneratedAt(String dateTime) {
    return 'Oluşturulma Tarihi: $dateTime';
  }

  @override
  String get pdfSummary => 'ÖZET';

  @override
  String pdfTotalCredits(String amount) {
    return 'Toplam Alacak : \$$amount';
  }

  @override
  String pdfTotalDebits(String amount) {
    return 'Toplam Borç : \$$amount';
  }

  @override
  String pdfBalance(String amount) {
    return 'Bakiye : \$$amount';
  }

  @override
  String get pdfColDate => 'Tarih';

  @override
  String get pdfColOrder => 'Sipariş';

  @override
  String get pdfColType => 'Tür';

  @override
  String get pdfColAmount => 'Tutar';

  @override
  String get pdfColNotes => 'Notlar';

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
      'Çevrimdışısınız. Kayıtlı verilerinizi göstermeye devam edeceğiz.';

  @override
  String get connectionRestoredMessage =>
      'Tekrar çevrimiçisiniz. En güncel veriler yenileniyor.';
}
