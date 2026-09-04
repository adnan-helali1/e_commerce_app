// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'B2B App';

  @override
  String get storeFallbackTitle => 'Tienda';

  @override
  String get navHome => 'Inicio';

  @override
  String get navOffers => 'Ofertas';

  @override
  String get navCatalog => 'Catálogo';

  @override
  String get navOrders => 'Pedidos';

  @override
  String get navLedger => 'Libro contable';

  @override
  String get navStock => 'Inventario';

  @override
  String get pageNotFound => 'Página no encontrada';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get close => 'Cerrar';

  @override
  String get update => 'Actualizar';

  @override
  String get submit => 'Enviar';

  @override
  String get add => 'Añadir';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get tryAgain => 'Intentar de nuevo';

  @override
  String get tryAgainLater => 'Inténtelo más tarde';

  @override
  String get viewAll => 'Ver todo';

  @override
  String get details => 'Detalles';

  @override
  String get export => 'Exportar';

  @override
  String get preview => 'Vista previa';

  @override
  String get status => 'Estado';

  @override
  String get active => 'Activo';

  @override
  String get inactive => 'Inactivo';

  @override
  String get pending => 'Pendiente';

  @override
  String get approved => 'Aprobado';

  @override
  String get preparing => 'En preparación';

  @override
  String get received => 'Recibido';

  @override
  String get submitted => 'Enviado';

  @override
  String get cancelled => 'Cancelado';

  @override
  String get all => 'Todos';

  @override
  String get buyPrice => 'Precio de compra';

  @override
  String get sellPrice => 'Precio de venta';

  @override
  String get stock => 'Existencias';

  @override
  String get profit => 'Beneficio';

  @override
  String get profitPerUnit => 'Beneficio/unidad';

  @override
  String get quantity => 'Cantidad';

  @override
  String get unitPrice => 'Precio unitario';

  @override
  String get sellerName => 'Nombre del vendedor';

  @override
  String get phone => 'Teléfono';

  @override
  String get email => 'Correo electrónico';

  @override
  String get address => 'Dirección';

  @override
  String get name => 'Nombre';

  @override
  String get password => 'Contraseña';

  @override
  String get category => 'Categoría';

  @override
  String get product => 'Producto';

  @override
  String get supplier => 'Proveedor';

  @override
  String get description => 'Descripción';

  @override
  String get created => 'Creado';

  @override
  String get updated => 'Actualizado';

  @override
  String get credit => 'Crédito';

  @override
  String get debit => 'Débito';

  @override
  String get income => 'Ingresos';

  @override
  String get expenses => 'Gastos';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get instagram => 'Instagram';

  @override
  String get facebook => 'Facebook';

  @override
  String get telegram => 'Telegram';

  @override
  String get language => 'Idioma';

  @override
  String get selectLanguage => 'Seleccionar idioma';

  @override
  String deleteTypedTitle(String type) {
    return 'Eliminar $type';
  }

  @override
  String deleteTypedConfirmMessage(String type) {
    return '¿Está seguro de que desea eliminar $type?';
  }

  @override
  String get doubleBackToExit => 'Pulse una vez más para cerrar la aplicación';

  @override
  String get browseOffers => 'Explorar ofertas';

  @override
  String get quickSale => 'Venta rápida';

  @override
  String get updateCatalogItem => 'Actualizar artículo del catálogo';

  @override
  String get addOfferToCatalog => 'Añadir oferta al catálogo';

  @override
  String get priceHintZero => '0.00';

  @override
  String get emailRequired => 'El correo electrónico es obligatorio';

  @override
  String get emailInvalid =>
      'Introduzca una dirección de correo electrónico válida';

  @override
  String get passwordRequired => 'La contraseña es obligatoria';

  @override
  String get passwordMinLength =>
      'La contraseña debe tener al menos 8 caracteres';

  @override
  String get passwordNeedsUppercase =>
      'La contraseña debe contener al menos 1 letra mayúscula';

  @override
  String get passwordNeedsLowercase =>
      'La contraseña debe contener al menos 1 letra minúscula';

  @override
  String get passwordNeedsNumber =>
      'La contraseña debe contener al menos 1 número';

  @override
  String get phoneRequired => 'El número de teléfono es obligatorio';

  @override
  String get phoneInvalid => 'Introduzca un número de teléfono válido';

  @override
  String fieldRequired(String fieldName) {
    return '$fieldName es obligatorio';
  }

  @override
  String fieldMinLengthTwo(String fieldName) {
    return '$fieldName debe tener al menos 2 caracteres';
  }

  @override
  String fieldLettersOnly(String fieldName) {
    return '$fieldName solo puede contener letras, espacios y guiones';
  }

  @override
  String get fieldNameDefault => 'Nombre';

  @override
  String get ownerNameField => 'Nombre del propietario';

  @override
  String get fieldDefault => 'Campo';

  @override
  String get storeNameRequired => 'El nombre de la tienda es obligatorio';

  @override
  String get storeNameMinLength =>
      'El nombre de la tienda debe tener al menos 2 caracteres';

  @override
  String get storeNameMaxLength =>
      'El nombre de la tienda no debe superar los 100 caracteres';

  @override
  String get addressMinLength =>
      'La dirección debe tener al menos 5 caracteres';

  @override
  String get passwordsDoNotMatch => 'Las contraseñas no coinciden';

  @override
  String get welcomeBack => 'Bienvenido de nuevo';

  @override
  String get welcomeBackExclaim => '¡Bienvenido de nuevo!';

  @override
  String get signInSubtitle => 'Inicie sesión en su cuenta de supermercado';

  @override
  String get emailAddressRequiredLabel => 'Dirección de correo electrónico *';

  @override
  String get emailHint => 'store@example.com';

  @override
  String get passwordRequiredLabel => 'Contraseña *';

  @override
  String get enterPasswordHint => 'Introduzca su contraseña';

  @override
  String get rememberMe => 'Recordarme';

  @override
  String get forgotPassword => '¿Olvidó su contraseña?';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get dontHaveAccount => '¿No tiene una cuenta?';

  @override
  String get createAccountLink => 'Crear cuenta';

  @override
  String get loginSuccess => '¡Sesión iniciada correctamente!';

  @override
  String get createAccount => 'Crear cuenta';

  @override
  String get registerSubtitle => 'Registre la cuenta de su tienda';

  @override
  String get storeNameRequiredLabel => 'Nombre de la tienda *';

  @override
  String get storeNameHint => 'Mi tienda';

  @override
  String get ownerNameRequiredLabel => 'Nombre del propietario *';

  @override
  String get ownerNameHint => 'Propietario';

  @override
  String get phoneRequiredLabel => 'Teléfono *';

  @override
  String get phoneHint => '0999999999';

  @override
  String get emailRequiredLabel => 'Correo electrónico *';

  @override
  String get registerEmailHint => 'store1@example.com';

  @override
  String get passwordHintExample => 'password123';

  @override
  String get confirmPasswordRequiredLabel => 'Confirmar contraseña *';

  @override
  String get confirmPasswordHint => 'Confirme su contraseña';

  @override
  String get alreadyHaveAccount => '¿Ya tiene una cuenta?';

  @override
  String get registrationSuccess => '¡Registro completado correctamente!';

  @override
  String get demoAccount => 'Cuenta de demostración';

  @override
  String get pleaseEnterPassword => 'Introduzca una contraseña';

  @override
  String passwordSentToAdmin(String password) {
    return 'La contraseña \"$password\" se ha enviado al administrador para su verificación';
  }

  @override
  String get contactEmailSnack =>
      'Correo electrónico: helaliadnan877@gmail.com';

  @override
  String get contactWhatsappSnack => 'WhatsApp: +963 985 198 014';

  @override
  String get recoverPassword => 'Recuperar contraseña';

  @override
  String get recoverPasswordSubtitle => 'Elija cómo desea recuperar su cuenta';

  @override
  String get submitAPassword => 'Enviar una contraseña';

  @override
  String get submitPasswordHelpText =>
      'Si no recuerda su contraseña, indíquenos la última contraseña que recuerde o una contraseña que considere similar y envíela';

  @override
  String get rememberedPasswordHint => 'Introduzca la contraseña que recuerde';

  @override
  String get sendPassword => 'Enviar contraseña';

  @override
  String get contactAdministrator => 'Contactar con el administrador';

  @override
  String get contactAdminHelpText =>
      'Contáctenos por correo electrónico o WhatsApp para recibir asistencia manual en la recuperación de la contraseña';

  @override
  String get supportEmail => 'helaliadnan877@gmail.com';

  @override
  String get supportWhatsappWithLabel => '+963 985 198 014 (WhatsApp)';

  @override
  String get supportWhatsapp => '+963985198014';

  @override
  String get backToSignIn => '← Volver al inicio de sesión';

  @override
  String get homeOverviewSubtitle =>
      'Este es el resumen de su negocio para hoy';

  @override
  String get quickActions => 'Acciones rápidas';

  @override
  String get manageCatalog => 'Gestionar catálogo';

  @override
  String get viewLedger => 'Ver libro contable';

  @override
  String get keyMetrics => 'Métricas clave';

  @override
  String get recentOrders => 'Pedidos recientes';

  @override
  String orderWithId(String id) {
    return 'Pedido $id';
  }

  @override
  String errorWithMessage(String error) {
    return 'Error: $error';
  }

  @override
  String get revenueToday => 'Ingresos de hoy';

  @override
  String get totalOrders => 'Pedidos totales';

  @override
  String get salesToday => 'Ventas de hoy';

  @override
  String get profitMargin => 'Margen de beneficio';

  @override
  String get lowStock => 'Existencias bajas';

  @override
  String get itemsNeedRestocking => 'Artículos que necesitan reposición';

  @override
  String get ordersToProcess => 'Pedidos por procesar';

  @override
  String get metricDecrease => 'de disminución';

  @override
  String get metricIncrease => 'de aumento';

  @override
  String metricChangeNote(String percent, String label) {
    return '$percent% $label';
  }

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get profileUpdatedSuccess => 'Perfil actualizado correctamente';

  @override
  String get updateProfile => 'Actualizar perfil';

  @override
  String get storeName => 'Nombre de la tienda';

  @override
  String get ownerName => 'Nombre del propietario';

  @override
  String get settingsAndPreferences => 'Ajustes y preferencias';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get updateStoreInformation => 'Actualizar la información de la tienda';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get manageAlertsAndUpdates => 'Gestionar alertas y actualizaciones';

  @override
  String get appearance => 'Apariencia';

  @override
  String get lightModeEnabled => 'Modo claro activado';

  @override
  String get darkModeEnabled => 'Modo oscuro activado';

  @override
  String get preferences => 'Preferencias';

  @override
  String get preferencesSubtitle => 'Idioma, moneda, etc.';

  @override
  String get supportAndLegal => 'Soporte y aspectos legales';

  @override
  String get helpAndSupport => 'Ayuda y soporte';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get darkMode => 'Modo oscuro';

  @override
  String get storeInformation => 'Información de la tienda';

  @override
  String storeIdLabel(String id) {
    return 'ID: SM--$id';
  }

  @override
  String get privacyPolicyIntro =>
      'Esta Política de Privacidad explica cómo nuestra aplicación de comercio electrónico B2B recopila, utiliza y protege su información.';

  @override
  String get privacySectionCollectTitle => '1. Información que recopilamos';

  @override
  String get privacySectionCollectBody =>
      'Podemos recopilar información empresarial como el nombre de la empresa, los datos de contacto, la dirección de correo electrónico y los datos de las transacciones. También recopilamos datos técnicos como el tipo de dispositivo y las analíticas de uso.';

  @override
  String get privacySectionUseTitle => '2. Cómo utilizamos la información';

  @override
  String get privacySectionUseBody =>
      'Utilizamos sus datos para prestar servicios, procesar transacciones, mejorar la plataforma y comunicar actualizaciones o soporte.';

  @override
  String get privacySectionSharingTitle => '3. Compartición de datos';

  @override
  String get privacySectionSharingBody =>
      'No vendemos sus datos. Podemos compartir información con socios de confianza únicamente para operar la plataforma o cumplir con obligaciones legales.';

  @override
  String get privacySectionSecurityTitle => '4. Seguridad';

  @override
  String get privacySectionSecurityBody =>
      'Aplicamos medidas de seguridad sólidas para proteger sus datos, incluidos el cifrado y los servidores seguros.';

  @override
  String get privacySectionRightsTitle => '5. Sus derechos';

  @override
  String get privacySectionRightsBody =>
      'Puede solicitar el acceso, la corrección o la eliminación de sus datos en cualquier momento poniéndose en contacto con nosotros.';

  @override
  String get privacySectionContactTitle => '6. Contacto';

  @override
  String get privacySectionContactBody =>
      'Si tiene alguna pregunta, contáctenos en:\n\nCorreo electrónico: helaliadnan877@gmail.com';

  @override
  String get privacyLastUpdated => 'Última actualización: 2025';

  @override
  String get purchaseOrders => 'Órdenes de compra';

  @override
  String get pendingApproval => 'Pendiente de aprobación';

  @override
  String get totalValue => 'Valor total';

  @override
  String get allOrders => 'Todos los pedidos';

  @override
  String ordersFoundCount(int count) {
    return '$count pedidos encontrados';
  }

  @override
  String totalAmountLabel(String amount) {
    return 'Total: \$$amount';
  }

  @override
  String get noOrdersFound => 'No se encontraron pedidos';

  @override
  String orderPoPrefix(String id) {
    return 'Pedido #PO-$id';
  }

  @override
  String get orderDeleteType => 'el pedido';

  @override
  String itemsCount(int count) {
    return '$count artículos';
  }

  @override
  String get loadingActiveOffers => 'Cargando ofertas activas...';

  @override
  String failedLoadActiveOffers(String error) {
    return 'No se pudieron cargar las ofertas activas: $error';
  }

  @override
  String get selectOffersToCreateOrder =>
      'Seleccione ofertas para crear un pedido';

  @override
  String get totalOrderPrice => 'Precio total del pedido';

  @override
  String get orderNoteHint => 'Nota del pedido';

  @override
  String get createOrder => 'Crear pedido';

  @override
  String ordersCreatedSuccess(int count) {
    return '¡$count pedido(s) creado(s) correctamente!';
  }

  @override
  String get fixQuantityErrors =>
      'Corrija los errores de cantidad antes de enviar';

  @override
  String get selectAtLeastOneItem => 'Seleccione al menos un artículo';

  @override
  String maxStockLabel(String stock) {
    return 'Máx.: $stock';
  }

  @override
  String idPrefix(String id) {
    return 'ID -- $id';
  }

  @override
  String get totalPrice => 'Precio total';

  @override
  String get qtyHint => 'Cant.';

  @override
  String get myStoreCatalog => 'Catálogo de mi tienda';

  @override
  String get activeProducts => 'Productos activos';

  @override
  String get potentialProfit => 'Beneficio potencial';

  @override
  String get searchCatalogHint => 'Buscar en el catálogo...';

  @override
  String get activeOnly => 'Solo activos';

  @override
  String get addProduct => 'Añadir producto';

  @override
  String get addProducts => 'Añadir productos';

  @override
  String get addProductsGoToOffers =>
      'Para añadir productos, vaya a la sección Ofertas de proveedores.';

  @override
  String get goToOffers => 'Ir a las ofertas';

  @override
  String get noProductsInCatalog => 'No hay productos en el catálogo';

  @override
  String get addProductToGetStarted => 'Añada un producto para comenzar';

  @override
  String estProfitLabel(String amount) {
    return 'Beneficio est.: \$$amount';
  }

  @override
  String get itemDeleteType => 'el artículo';

  @override
  String get offerUpdatedSuccess => 'Oferta actualizada correctamente';

  @override
  String get catalogItemUpdatedSuccess =>
      'Artículo del catálogo actualizado correctamente';

  @override
  String get catalogItemDeletedSuccess =>
      'Artículo del catálogo eliminado correctamente';

  @override
  String get supplierOffers => 'Ofertas de proveedores';

  @override
  String get totalOffers => 'Ofertas totales';

  @override
  String get allOffersReceived => 'Todas las ofertas recibidas';

  @override
  String get availableOffers => 'Ofertas disponibles';

  @override
  String get readyToReview => 'Listas para revisar';

  @override
  String get searchProductsOrSuppliersHint =>
      'Buscar productos o proveedores...';

  @override
  String get filterByCategory => 'Filtrar por categoría';

  @override
  String get categoryAll => 'Todas';

  @override
  String get categoryBeverages => 'Bebidas';

  @override
  String get categorySnacks => 'Aperitivos';

  @override
  String get categoryFruits => 'Frutas';

  @override
  String get categoryVegetables => 'Verduras';

  @override
  String get categoryDairy => 'Lácteos';

  @override
  String get categoryEggs => 'Huevos';

  @override
  String get buyPriceMultiline => 'Precio\nde compra';

  @override
  String get noResultsFound => 'No se encontraron resultados';

  @override
  String get offerAddedSuccess => 'Oferta añadida correctamente';

  @override
  String get inventoryOverview => 'Resumen del inventario';

  @override
  String get totalItems => 'Artículos totales';

  @override
  String get outOfStock => 'Sin existencias';

  @override
  String get searchProductsHint => 'Buscar productos...';

  @override
  String allItemsWithCount(int count) {
    return 'Todos los artículos ($count)';
  }

  @override
  String lowStockWithCount(int count) {
    return 'Existencias bajas ($count)';
  }

  @override
  String outOfStockWithCount(int count) {
    return 'Sin existencias ($count)';
  }

  @override
  String get noItemsFound => 'No se encontraron artículos';

  @override
  String get tryAdjustSearchOrFilter =>
      'Pruebe a ajustar su búsqueda o filtro.';

  @override
  String get stockAddedSuccess => 'Existencias añadidas correctamente';

  @override
  String get addStock => 'Añadir existencias';

  @override
  String get stockLevel => 'Nivel de existencias';

  @override
  String get minStock => 'Existencias mínimas';

  @override
  String get lastUpdated => 'Última actualización';

  @override
  String get stockDetails => 'Detalles de existencias';

  @override
  String get stockInfo => 'Información de existencias';

  @override
  String get storeProduct => 'Producto de la tienda';

  @override
  String get supplierProduct => 'Producto del proveedor';

  @override
  String get stockQty => 'Cant. en existencias';

  @override
  String get totalIncome => 'Ingresos totales';

  @override
  String get totalExpenses => 'Gastos totales';

  @override
  String get currentBalance => 'Saldo actual';

  @override
  String get transactionHistory => 'Historial de transacciones';

  @override
  String get noTransactionsYet => 'Aún no hay transacciones';

  @override
  String ledgerRefLabel(String type, String id) {
    return 'Ref. $type-$id';
  }

  @override
  String get somethingWentWrong => 'Algo salió mal';

  @override
  String get pdfSavedSuccess => 'PDF guardado correctamente';

  @override
  String get savePdf => 'Guardar PDF';

  @override
  String get sharePdf => 'Compartir PDF';

  @override
  String get pdfStoreLedgerReport => 'INFORME DEL LIBRO CONTABLE DE LA TIENDA';

  @override
  String pdfStoreName(String storeName) {
    return 'Nombre de la tienda: $storeName';
  }

  @override
  String pdfGeneratedAt(String dateTime) {
    return 'Generado el: $dateTime';
  }

  @override
  String get pdfSummary => 'RESUMEN';

  @override
  String pdfTotalCredits(String amount) {
    return 'Créditos totales : \$$amount';
  }

  @override
  String pdfTotalDebits(String amount) {
    return 'Débitos totales : \$$amount';
  }

  @override
  String pdfBalance(String amount) {
    return 'Saldo : \$$amount';
  }

  @override
  String get pdfColDate => 'Fecha';

  @override
  String get pdfColOrder => 'Pedido';

  @override
  String get pdfColType => 'Tipo';

  @override
  String get pdfColAmount => 'Importe';

  @override
  String get pdfColNotes => 'Notas';

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
      'No tienes conexión. Seguiremos mostrando tus datos guardados.';

  @override
  String get connectionRestoredMessage =>
      'Has recuperado la conexión. Actualizando los datos más recientes.';
}
