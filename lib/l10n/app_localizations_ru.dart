// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'B2B App';

  @override
  String get storeFallbackTitle => 'Магазин';

  @override
  String get navHome => 'Главная';

  @override
  String get navOffers => 'Предложения';

  @override
  String get navCatalog => 'Каталог';

  @override
  String get navOrders => 'Заказы';

  @override
  String get navLedger => 'Книга учёта';

  @override
  String get navStock => 'Склад';

  @override
  String get pageNotFound => 'Страница не найдена';

  @override
  String get save => 'Сохранить';

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get close => 'Закрыть';

  @override
  String get update => 'Обновить';

  @override
  String get submit => 'Отправить';

  @override
  String get add => 'Добавить';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get tryAgain => 'Повторить попытку';

  @override
  String get tryAgainLater => 'Повторить позже';

  @override
  String get viewAll => 'Показать все';

  @override
  String get details => 'Подробности';

  @override
  String get export => 'Экспорт';

  @override
  String get preview => 'Предпросмотр';

  @override
  String get status => 'Статус';

  @override
  String get active => 'Активен';

  @override
  String get inactive => 'Неактивен';

  @override
  String get pending => 'В ожидании';

  @override
  String get approved => 'Одобрен';

  @override
  String get preparing => 'Подготовка';

  @override
  String get received => 'Получен';

  @override
  String get submitted => 'Отправлен';

  @override
  String get cancelled => 'Отменён';

  @override
  String get all => 'Все';

  @override
  String get buyPrice => 'Закупочная цена';

  @override
  String get sellPrice => 'Цена продажи';

  @override
  String get stock => 'Остаток';

  @override
  String get profit => 'Прибыль';

  @override
  String get profitPerUnit => 'Прибыль/ед.';

  @override
  String get quantity => 'Количество';

  @override
  String get unitPrice => 'Цена за единицу';

  @override
  String get sellerName => 'Имя продавца';

  @override
  String get phone => 'Телефон';

  @override
  String get email => 'Эл. почта';

  @override
  String get address => 'Адрес';

  @override
  String get name => 'Имя';

  @override
  String get password => 'Пароль';

  @override
  String get category => 'Категория';

  @override
  String get product => 'Товар';

  @override
  String get supplier => 'Поставщик';

  @override
  String get description => 'Описание';

  @override
  String get created => 'Создано';

  @override
  String get updated => 'Обновлено';

  @override
  String get credit => 'Приход';

  @override
  String get debit => 'Расход';

  @override
  String get income => 'Доходы';

  @override
  String get expenses => 'Расходы';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get instagram => 'Instagram';

  @override
  String get facebook => 'Facebook';

  @override
  String get telegram => 'Telegram';

  @override
  String get language => 'Язык';

  @override
  String get selectLanguage => 'Выбрать язык';

  @override
  String deleteTypedTitle(String type) {
    return 'Удалить $type';
  }

  @override
  String deleteTypedConfirmMessage(String type) {
    return 'Вы действительно хотите удалить этот $type?';
  }

  @override
  String get doubleBackToExit => 'Нажмите ещё раз, чтобы закрыть приложение';

  @override
  String get browseOffers => 'Просмотр предложений';

  @override
  String get quickSale => 'Быстрая продажа';

  @override
  String get updateCatalogItem => 'Обновить позицию каталога';

  @override
  String get addOfferToCatalog => 'Добавить предложение в каталог';

  @override
  String get priceHintZero => '0.00';

  @override
  String get emailRequired => 'Укажите адрес электронной почты';

  @override
  String get emailInvalid => 'Введите действительный адрес электронной почты';

  @override
  String get passwordRequired => 'Укажите пароль';

  @override
  String get passwordMinLength => 'Пароль должен содержать не менее 8 символов';

  @override
  String get passwordNeedsUppercase =>
      'Пароль должен содержать не менее 1 заглавной буквы';

  @override
  String get passwordNeedsLowercase =>
      'Пароль должен содержать не менее 1 строчной буквы';

  @override
  String get passwordNeedsNumber => 'Пароль должен содержать не менее 1 цифры';

  @override
  String get phoneRequired => 'Укажите номер телефона';

  @override
  String get phoneInvalid => 'Введите действительный номер телефона';

  @override
  String fieldRequired(String fieldName) {
    return 'Поле «$fieldName» обязательно для заполнения';
  }

  @override
  String fieldMinLengthTwo(String fieldName) {
    return 'Поле «$fieldName» должно содержать не менее 2 символов';
  }

  @override
  String fieldLettersOnly(String fieldName) {
    return 'Поле «$fieldName» может содержать только буквы, пробелы и дефисы';
  }

  @override
  String get fieldNameDefault => 'Имя';

  @override
  String get ownerNameField => 'Имя владельца';

  @override
  String get fieldDefault => 'Поле';

  @override
  String get storeNameRequired => 'Укажите название магазина';

  @override
  String get storeNameMinLength =>
      'Название магазина должно содержать не менее 2 символов';

  @override
  String get storeNameMaxLength =>
      'Название магазина не должно превышать 100 символов';

  @override
  String get addressMinLength => 'Адрес должен содержать не менее 5 символов';

  @override
  String get passwordsDoNotMatch => 'Пароли не совпадают';

  @override
  String get welcomeBack => 'С возвращением';

  @override
  String get welcomeBackExclaim => 'С возвращением!';

  @override
  String get signInSubtitle => 'Войдите в учётную запись вашего супермаркета';

  @override
  String get emailAddressRequiredLabel => 'Адрес электронной почты *';

  @override
  String get emailHint => 'store@example.com';

  @override
  String get passwordRequiredLabel => 'Пароль *';

  @override
  String get enterPasswordHint => 'Введите пароль';

  @override
  String get rememberMe => 'Запомнить меня';

  @override
  String get forgotPassword => 'Забыли пароль?';

  @override
  String get signIn => 'Войти';

  @override
  String get dontHaveAccount => 'Нет учётной записи?';

  @override
  String get createAccountLink => 'Создать учётную запись';

  @override
  String get loginSuccess => 'Вход выполнен успешно!';

  @override
  String get createAccount => 'Создать учётную запись';

  @override
  String get registerSubtitle => 'Зарегистрируйте учётную запись магазина';

  @override
  String get storeNameRequiredLabel => 'Название магазина *';

  @override
  String get storeNameHint => 'Мой магазин';

  @override
  String get ownerNameRequiredLabel => 'Имя владельца *';

  @override
  String get ownerNameHint => 'Владелец';

  @override
  String get phoneRequiredLabel => 'Телефон *';

  @override
  String get phoneHint => '0999999999';

  @override
  String get emailRequiredLabel => 'Эл. почта *';

  @override
  String get registerEmailHint => 'store1@example.com';

  @override
  String get passwordHintExample => 'password123';

  @override
  String get confirmPasswordRequiredLabel => 'Подтверждение пароля *';

  @override
  String get confirmPasswordHint => 'Подтвердите пароль';

  @override
  String get alreadyHaveAccount => 'Уже есть учётная запись?';

  @override
  String get registrationSuccess => 'Регистрация выполнена успешно!';

  @override
  String get demoAccount => 'Демонстрационная учётная запись';

  @override
  String get pleaseEnterPassword => 'Введите пароль';

  @override
  String passwordSentToAdmin(String password) {
    return 'Пароль \"$password\" отправлен администратору на проверку';
  }

  @override
  String get contactEmailSnack => 'Эл. почта: helaliadnan877@gmail.com';

  @override
  String get contactWhatsappSnack => 'WhatsApp: +963 985 198 014';

  @override
  String get recoverPassword => 'Восстановление пароля';

  @override
  String get recoverPasswordSubtitle =>
      'Выберите способ восстановления учётной записи';

  @override
  String get submitAPassword => 'Отправить пароль';

  @override
  String get submitPasswordHelpText =>
      'Если вы не помните свой пароль, укажите последний пароль, который помните, или пароль, похожий на него, и отправьте его';

  @override
  String get rememberedPasswordHint => 'Введите пароль, который вы помните';

  @override
  String get sendPassword => 'Отправить пароль';

  @override
  String get contactAdministrator => 'Связаться с администратором';

  @override
  String get contactAdminHelpText =>
      'Свяжитесь с нами по электронной почте или в WhatsApp, чтобы получить помощь в восстановлении пароля вручную';

  @override
  String get supportEmail => 'helaliadnan877@gmail.com';

  @override
  String get supportWhatsappWithLabel => '+963 985 198 014 (WhatsApp)';

  @override
  String get supportWhatsapp => '+963985198014';

  @override
  String get backToSignIn => '← Назад ко входу';

  @override
  String get homeOverviewSubtitle => 'Обзор вашего бизнеса на сегодня';

  @override
  String get quickActions => 'Быстрые действия';

  @override
  String get manageCatalog => 'Управление каталогом';

  @override
  String get viewLedger => 'Открыть книгу учёта';

  @override
  String get keyMetrics => 'Ключевые показатели';

  @override
  String get recentOrders => 'Последние заказы';

  @override
  String orderWithId(String id) {
    return 'Заказ $id';
  }

  @override
  String errorWithMessage(String error) {
    return 'Ошибка: $error';
  }

  @override
  String get revenueToday => 'Выручка за сегодня';

  @override
  String get totalOrders => 'Всего заказов';

  @override
  String get salesToday => 'Продажи за сегодня';

  @override
  String get profitMargin => 'Норма прибыли';

  @override
  String get lowStock => 'Низкий остаток';

  @override
  String get itemsNeedRestocking => 'Товары требуют пополнения';

  @override
  String get ordersToProcess => 'Заказы к обработке';

  @override
  String get metricDecrease => 'снижение';

  @override
  String get metricIncrease => 'рост';

  @override
  String metricChangeNote(String percent, String label) {
    return '$percent% $label';
  }

  @override
  String get logout => 'Выйти';

  @override
  String get profileUpdatedSuccess => 'Профиль успешно обновлён';

  @override
  String get updateProfile => 'Обновить профиль';

  @override
  String get storeName => 'Название магазина';

  @override
  String get ownerName => 'Имя владельца';

  @override
  String get settingsAndPreferences => 'Настройки и параметры';

  @override
  String get editProfile => 'Редактировать профиль';

  @override
  String get updateStoreInformation => 'Обновить сведения о магазине';

  @override
  String get notifications => 'Уведомления';

  @override
  String get manageAlertsAndUpdates => 'Управление оповещениями и обновлениями';

  @override
  String get appearance => 'Оформление';

  @override
  String get lightModeEnabled => 'Светлая тема включена';

  @override
  String get darkModeEnabled => 'Тёмная тема включена';

  @override
  String get preferences => 'Параметры';

  @override
  String get preferencesSubtitle => 'Язык, валюта и т. д.';

  @override
  String get supportAndLegal => 'Поддержка и правовая информация';

  @override
  String get helpAndSupport => 'Справка и поддержка';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get darkMode => 'Тёмная тема';

  @override
  String get storeInformation => 'Сведения о магазине';

  @override
  String storeIdLabel(String id) {
    return 'ID: SM--$id';
  }

  @override
  String get privacyPolicyIntro =>
      'Настоящая Политика конфиденциальности описывает, как наше B2B-приложение электронной коммерции собирает, использует и защищает вашу информацию.';

  @override
  String get privacySectionCollectTitle => '1. Собираемая информация';

  @override
  String get privacySectionCollectBody =>
      'Мы можем собирать деловую информацию, такую как название компании, контактные данные, адрес электронной почты и данные о транзакциях. Мы также собираем технические данные, например тип устройства и аналитику использования.';

  @override
  String get privacySectionUseTitle => '2. Как мы используем информацию';

  @override
  String get privacySectionUseBody =>
      'Мы используем ваши данные для предоставления услуг, обработки транзакций, улучшения платформы и информирования об обновлениях или поддержке.';

  @override
  String get privacySectionSharingTitle => '3. Передача данных';

  @override
  String get privacySectionSharingBody =>
      'Мы не продаём ваши данные. Мы можем передавать информацию проверенным партнёрам исключительно для работы платформы или соблюдения требований законодательства.';

  @override
  String get privacySectionSecurityTitle => '4. Безопасность';

  @override
  String get privacySectionSecurityBody =>
      'Мы применяем строгие меры безопасности для защиты ваших данных, включая шифрование и защищённые серверы.';

  @override
  String get privacySectionRightsTitle => '5. Ваши права';

  @override
  String get privacySectionRightsBody =>
      'Вы можете в любое время запросить доступ к своим данным, их исправление или удаление, связавшись с нами.';

  @override
  String get privacySectionContactTitle => '6. Связаться с нами';

  @override
  String get privacySectionContactBody =>
      'Если у вас есть вопросы, свяжитесь с нами:\n\nЭл. почта: helaliadnan877@gmail.com';

  @override
  String get privacyLastUpdated => 'Последнее обновление: 2025';

  @override
  String get purchaseOrders => 'Заказы на закупку';

  @override
  String get pendingApproval => 'Ожидает одобрения';

  @override
  String get totalValue => 'Общая стоимость';

  @override
  String get allOrders => 'Все заказы';

  @override
  String ordersFoundCount(int count) {
    return 'Найдено заказов: $count';
  }

  @override
  String totalAmountLabel(String amount) {
    return 'Итого: \$$amount';
  }

  @override
  String get noOrdersFound => 'Заказы не найдены';

  @override
  String orderPoPrefix(String id) {
    return 'Заказ №PO-$id';
  }

  @override
  String get orderDeleteType => 'заказ';

  @override
  String itemsCount(int count) {
    return 'Позиций: $count';
  }

  @override
  String get loadingActiveOffers => 'Загрузка активных предложений...';

  @override
  String failedLoadActiveOffers(String error) {
    return 'Не удалось загрузить активные предложения: $error';
  }

  @override
  String get selectOffersToCreateOrder =>
      'Выберите предложения для создания заказа';

  @override
  String get totalOrderPrice => 'Общая стоимость заказа';

  @override
  String get orderNoteHint => 'Примечание к заказу';

  @override
  String get createOrder => 'Создать заказ';

  @override
  String ordersCreatedSuccess(int count) {
    return 'Успешно создано заказов: $count!';
  }

  @override
  String get fixQuantityErrors =>
      'Исправьте ошибки в количестве перед отправкой';

  @override
  String get selectAtLeastOneItem => 'Выберите хотя бы одну позицию';

  @override
  String maxStockLabel(String stock) {
    return 'Макс.: $stock';
  }

  @override
  String idPrefix(String id) {
    return 'ID -- $id';
  }

  @override
  String get totalPrice => 'Общая стоимость';

  @override
  String get qtyHint => 'Кол-во';

  @override
  String get myStoreCatalog => 'Каталог моего магазина';

  @override
  String get activeProducts => 'Активные товары';

  @override
  String get potentialProfit => 'Потенциальная прибыль';

  @override
  String get searchCatalogHint => 'Поиск по каталогу...';

  @override
  String get activeOnly => 'Только активные';

  @override
  String get addProduct => 'Добавить товар';

  @override
  String get addProducts => 'Добавить товары';

  @override
  String get addProductsGoToOffers =>
      'Чтобы добавить товары, перейдите в раздел «Предложения поставщиков».';

  @override
  String get goToOffers => 'Перейти к предложениям';

  @override
  String get noProductsInCatalog => 'В каталоге нет товаров';

  @override
  String get addProductToGetStarted => 'Добавьте товар, чтобы начать';

  @override
  String estProfitLabel(String amount) {
    return 'Ожид. прибыль: \$$amount';
  }

  @override
  String get itemDeleteType => 'товар';

  @override
  String get offerUpdatedSuccess => 'Предложение успешно обновлено';

  @override
  String get catalogItemUpdatedSuccess => 'Позиция каталога успешно обновлена';

  @override
  String get supplierOffers => 'Предложения поставщиков';

  @override
  String get totalOffers => 'Всего предложений';

  @override
  String get allOffersReceived => 'Все полученные предложения';

  @override
  String get availableOffers => 'Доступные предложения';

  @override
  String get readyToReview => 'Готовы к рассмотрению';

  @override
  String get searchProductsOrSuppliersHint =>
      'Поиск товаров или поставщиков...';

  @override
  String get filterByCategory => 'Фильтр по категории';

  @override
  String get categoryAll => 'Все';

  @override
  String get categoryBeverages => 'Напитки';

  @override
  String get categorySnacks => 'Снеки';

  @override
  String get categoryFruits => 'Фрукты';

  @override
  String get categoryVegetables => 'Овощи';

  @override
  String get categoryDairy => 'Молочные продукты';

  @override
  String get categoryEggs => 'Яйца';

  @override
  String get buyPriceMultiline => 'Закупочная\nцена';

  @override
  String get noResultsFound => 'Результаты не найдены';

  @override
  String get offerAddedSuccess => 'Предложение успешно добавлено';

  @override
  String get inventoryOverview => 'Обзор запасов';

  @override
  String get totalItems => 'Всего позиций';

  @override
  String get outOfStock => 'Нет в наличии';

  @override
  String get searchProductsHint => 'Поиск товаров...';

  @override
  String allItemsWithCount(int count) {
    return 'Все позиции ($count)';
  }

  @override
  String lowStockWithCount(int count) {
    return 'Низкий остаток ($count)';
  }

  @override
  String outOfStockWithCount(int count) {
    return 'Нет в наличии ($count)';
  }

  @override
  String get noItemsFound => 'Позиции не найдены';

  @override
  String get tryAdjustSearchOrFilter =>
      'Измените параметры поиска или фильтра.';

  @override
  String get stockAddedSuccess => 'Остаток успешно добавлен';

  @override
  String get addStock => 'Добавить остаток';

  @override
  String get stockLevel => 'Уровень запаса';

  @override
  String get minStock => 'Минимальный остаток';

  @override
  String get lastUpdated => 'Последнее обновление';

  @override
  String get stockDetails => 'Сведения о запасах';

  @override
  String get stockInfo => 'Информация о запасах';

  @override
  String get storeProduct => 'Товар магазина';

  @override
  String get supplierProduct => 'Товар поставщика';

  @override
  String get stockQty => 'Кол-во на складе';

  @override
  String get totalIncome => 'Общий доход';

  @override
  String get totalExpenses => 'Общие расходы';

  @override
  String get currentBalance => 'Текущий баланс';

  @override
  String get transactionHistory => 'История операций';

  @override
  String get noTransactionsYet => 'Операций пока нет';

  @override
  String ledgerRefLabel(String type, String id) {
    return 'Ссылка $type-$id';
  }

  @override
  String get somethingWentWrong => 'Что-то пошло не так';

  @override
  String get pdfSavedSuccess => 'PDF успешно сохранён';

  @override
  String get savePdf => 'Сохранить PDF';

  @override
  String get sharePdf => 'Поделиться PDF';

  @override
  String get pdfStoreLedgerReport => 'ОТЧЁТ ПО КНИГЕ УЧЁТА МАГАЗИНА';

  @override
  String pdfStoreName(String storeName) {
    return 'Название магазина: $storeName';
  }

  @override
  String pdfGeneratedAt(String dateTime) {
    return 'Дата формирования: $dateTime';
  }

  @override
  String get pdfSummary => 'СВОДКА';

  @override
  String pdfTotalCredits(String amount) {
    return 'Итого приход : \$$amount';
  }

  @override
  String pdfTotalDebits(String amount) {
    return 'Итого расход : \$$amount';
  }

  @override
  String pdfBalance(String amount) {
    return 'Баланс : \$$amount';
  }

  @override
  String get pdfColDate => 'Дата';

  @override
  String get pdfColOrder => 'Заказ';

  @override
  String get pdfColType => 'Тип';

  @override
  String get pdfColAmount => 'Сумма';

  @override
  String get pdfColNotes => 'Примечания';

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
