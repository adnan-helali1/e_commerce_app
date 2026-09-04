// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'B2B App';

  @override
  String get storeFallbackTitle => 'Loja';

  @override
  String get navHome => 'Início';

  @override
  String get navOffers => 'Ofertas';

  @override
  String get navCatalog => 'Catálogo';

  @override
  String get navOrders => 'Pedidos';

  @override
  String get navLedger => 'Livro-razão';

  @override
  String get navStock => 'Estoque';

  @override
  String get pageNotFound => 'Página não encontrada';

  @override
  String get save => 'Salvar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get close => 'Fechar';

  @override
  String get update => 'Atualizar';

  @override
  String get submit => 'Enviar';

  @override
  String get add => 'Adicionar';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get tryAgain => 'Tentar novamente';

  @override
  String get tryAgainLater => 'Tentar novamente mais tarde';

  @override
  String get viewAll => 'Ver tudo';

  @override
  String get details => 'Detalhes';

  @override
  String get export => 'Exportar';

  @override
  String get preview => 'Visualizar';

  @override
  String get status => 'Status';

  @override
  String get active => 'Ativo';

  @override
  String get inactive => 'Inativo';

  @override
  String get pending => 'Pendente';

  @override
  String get approved => 'Aprovado';

  @override
  String get preparing => 'Em preparação';

  @override
  String get received => 'Recebido';

  @override
  String get submitted => 'Enviado';

  @override
  String get cancelled => 'Cancelado';

  @override
  String get all => 'Todos';

  @override
  String get buyPrice => 'Preço de compra';

  @override
  String get sellPrice => 'Preço de venda';

  @override
  String get stock => 'Estoque';

  @override
  String get profit => 'Lucro';

  @override
  String get profitPerUnit => 'Lucro/unidade';

  @override
  String get quantity => 'Quantidade';

  @override
  String get unitPrice => 'Preço unitário';

  @override
  String get sellerName => 'Nome do vendedor';

  @override
  String get phone => 'Telefone';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Endereço';

  @override
  String get name => 'Nome';

  @override
  String get password => 'Senha';

  @override
  String get category => 'Categoria';

  @override
  String get product => 'Produto';

  @override
  String get supplier => 'Fornecedor';

  @override
  String get description => 'Descrição';

  @override
  String get created => 'Criado';

  @override
  String get updated => 'Atualizado';

  @override
  String get credit => 'Crédito';

  @override
  String get debit => 'Débito';

  @override
  String get income => 'Receitas';

  @override
  String get expenses => 'Despesas';

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
  String get selectLanguage => 'Selecionar idioma';

  @override
  String deleteTypedTitle(String type) {
    return 'Excluir $type';
  }

  @override
  String deleteTypedConfirmMessage(String type) {
    return 'Tem certeza de que deseja excluir $type?';
  }

  @override
  String get doubleBackToExit => 'Toque mais uma vez para fechar o aplicativo';

  @override
  String get browseOffers => 'Explorar ofertas';

  @override
  String get quickSale => 'Venda rápida';

  @override
  String get updateCatalogItem => 'Atualizar item do catálogo';

  @override
  String get addOfferToCatalog => 'Adicionar oferta ao catálogo';

  @override
  String get priceHintZero => '0.00';

  @override
  String get emailRequired => 'O e-mail é obrigatório';

  @override
  String get emailInvalid => 'Informe um endereço de e-mail válido';

  @override
  String get passwordRequired => 'A senha é obrigatória';

  @override
  String get passwordMinLength => 'A senha deve ter no mínimo 8 caracteres';

  @override
  String get passwordNeedsUppercase =>
      'A senha deve conter pelo menos 1 letra maiúscula';

  @override
  String get passwordNeedsLowercase =>
      'A senha deve conter pelo menos 1 letra minúscula';

  @override
  String get passwordNeedsNumber => 'A senha deve conter pelo menos 1 número';

  @override
  String get phoneRequired => 'O número de telefone é obrigatório';

  @override
  String get phoneInvalid => 'Informe um número de telefone válido';

  @override
  String fieldRequired(String fieldName) {
    return '$fieldName é obrigatório';
  }

  @override
  String fieldMinLengthTwo(String fieldName) {
    return '$fieldName deve ter no mínimo 2 caracteres';
  }

  @override
  String fieldLettersOnly(String fieldName) {
    return '$fieldName pode conter apenas letras, espaços e hifens';
  }

  @override
  String get fieldNameDefault => 'Nome';

  @override
  String get ownerNameField => 'Nome do proprietário';

  @override
  String get fieldDefault => 'Campo';

  @override
  String get storeNameRequired => 'O nome da loja é obrigatório';

  @override
  String get storeNameMinLength =>
      'O nome da loja deve ter no mínimo 2 caracteres';

  @override
  String get storeNameMaxLength =>
      'O nome da loja não deve exceder 100 caracteres';

  @override
  String get addressMinLength => 'O endereço deve ter no mínimo 5 caracteres';

  @override
  String get passwordsDoNotMatch => 'As senhas não coincidem';

  @override
  String get welcomeBack => 'Bem-vindo de volta';

  @override
  String get welcomeBackExclaim => 'Bem-vindo de volta!';

  @override
  String get signInSubtitle => 'Acesse a conta do seu supermercado';

  @override
  String get emailAddressRequiredLabel => 'Endereço de e-mail *';

  @override
  String get emailHint => 'store@example.com';

  @override
  String get passwordRequiredLabel => 'Senha *';

  @override
  String get enterPasswordHint => 'Digite sua senha';

  @override
  String get rememberMe => 'Lembrar de mim';

  @override
  String get forgotPassword => 'Esqueceu a senha?';

  @override
  String get signIn => 'Entrar';

  @override
  String get dontHaveAccount => 'Ainda não tem uma conta?';

  @override
  String get createAccountLink => 'Criar conta';

  @override
  String get loginSuccess => 'Login realizado com sucesso!';

  @override
  String get createAccount => 'Criar conta';

  @override
  String get registerSubtitle => 'Cadastre a conta da sua loja';

  @override
  String get storeNameRequiredLabel => 'Nome da loja *';

  @override
  String get storeNameHint => 'Minha loja';

  @override
  String get ownerNameRequiredLabel => 'Nome do proprietário *';

  @override
  String get ownerNameHint => 'Proprietário';

  @override
  String get phoneRequiredLabel => 'Telefone *';

  @override
  String get phoneHint => '0999999999';

  @override
  String get emailRequiredLabel => 'E-mail *';

  @override
  String get registerEmailHint => 'store1@example.com';

  @override
  String get passwordHintExample => 'password123';

  @override
  String get confirmPasswordRequiredLabel => 'Confirmar senha *';

  @override
  String get confirmPasswordHint => 'Confirme sua senha';

  @override
  String get alreadyHaveAccount => 'Já tem uma conta?';

  @override
  String get registrationSuccess => 'Cadastro realizado com sucesso!';

  @override
  String get demoAccount => 'Conta de demonstração';

  @override
  String get pleaseEnterPassword => 'Digite uma senha';

  @override
  String passwordSentToAdmin(String password) {
    return 'A senha \"$password\" foi enviada ao administrador para verificação';
  }

  @override
  String get contactEmailSnack => 'E-mail: helaliadnan877@gmail.com';

  @override
  String get contactWhatsappSnack => 'WhatsApp: +963 985 198 014';

  @override
  String get recoverPassword => 'Recuperar senha';

  @override
  String get recoverPasswordSubtitle =>
      'Escolha como deseja recuperar sua conta';

  @override
  String get submitAPassword => 'Enviar uma senha';

  @override
  String get submitPasswordHelpText =>
      'Se você não conseguir lembrar sua senha, informe a última senha de que se lembra ou uma senha que considere semelhante e envie';

  @override
  String get rememberedPasswordHint => 'Digite a senha de que você se lembra';

  @override
  String get sendPassword => 'Enviar senha';

  @override
  String get contactAdministrator => 'Contatar o administrador';

  @override
  String get contactAdminHelpText =>
      'Entre em contato conosco por e-mail ou WhatsApp para obter assistência manual na recuperação da senha';

  @override
  String get supportEmail => 'helaliadnan877@gmail.com';

  @override
  String get supportWhatsappWithLabel => '+963 985 198 014 (WhatsApp)';

  @override
  String get supportWhatsapp => '+963985198014';

  @override
  String get backToSignIn => '← Voltar para o login';

  @override
  String get homeOverviewSubtitle => 'Veja o resumo do seu negócio para hoje';

  @override
  String get quickActions => 'Ações rápidas';

  @override
  String get manageCatalog => 'Gerenciar catálogo';

  @override
  String get viewLedger => 'Ver livro-razão';

  @override
  String get keyMetrics => 'Principais indicadores';

  @override
  String get recentOrders => 'Pedidos recentes';

  @override
  String orderWithId(String id) {
    return 'Pedido $id';
  }

  @override
  String errorWithMessage(String error) {
    return 'Erro: $error';
  }

  @override
  String get revenueToday => 'Receita de hoje';

  @override
  String get totalOrders => 'Total de pedidos';

  @override
  String get salesToday => 'Vendas de hoje';

  @override
  String get profitMargin => 'Margem de lucro';

  @override
  String get lowStock => 'Estoque baixo';

  @override
  String get itemsNeedRestocking => 'Itens que precisam de reposição';

  @override
  String get ordersToProcess => 'Pedidos a processar';

  @override
  String get metricDecrease => 'de queda';

  @override
  String get metricIncrease => 'de aumento';

  @override
  String metricChangeNote(String percent, String label) {
    return '$percent% $label';
  }

  @override
  String get logout => 'Sair';

  @override
  String get profileUpdatedSuccess => 'Perfil atualizado com sucesso';

  @override
  String get updateProfile => 'Atualizar perfil';

  @override
  String get storeName => 'Nome da loja';

  @override
  String get ownerName => 'Nome do proprietário';

  @override
  String get settingsAndPreferences => 'Configurações e preferências';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get updateStoreInformation => 'Atualizar informações da loja';

  @override
  String get notifications => 'Notificações';

  @override
  String get manageAlertsAndUpdates => 'Gerenciar alertas e atualizações';

  @override
  String get appearance => 'Aparência';

  @override
  String get lightModeEnabled => 'Modo claro ativado';

  @override
  String get darkModeEnabled => 'Modo escuro ativado';

  @override
  String get preferences => 'Preferências';

  @override
  String get preferencesSubtitle => 'Idioma, moeda etc.';

  @override
  String get supportAndLegal => 'Suporte e informações legais';

  @override
  String get helpAndSupport => 'Ajuda e suporte';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String get darkMode => 'Modo escuro';

  @override
  String get storeInformation => 'Informações da loja';

  @override
  String storeIdLabel(String id) {
    return 'ID: SM--$id';
  }

  @override
  String get privacyPolicyIntro =>
      'Esta Política de Privacidade explica como nosso aplicativo de comércio eletrônico B2B coleta, utiliza e protege suas informações.';

  @override
  String get privacySectionCollectTitle => '1. Informações que coletamos';

  @override
  String get privacySectionCollectBody =>
      'Podemos coletar informações empresariais, como nome da empresa, dados de contato, endereço de e-mail e dados de transações. Também coletamos dados técnicos, como o tipo de dispositivo e análises de uso.';

  @override
  String get privacySectionUseTitle => '2. Como utilizamos as informações';

  @override
  String get privacySectionUseBody =>
      'Utilizamos seus dados para prestar serviços, processar transações, aprimorar a plataforma e comunicar atualizações ou suporte.';

  @override
  String get privacySectionSharingTitle => '3. Compartilhamento de dados';

  @override
  String get privacySectionSharingBody =>
      'Não vendemos seus dados. Podemos compartilhar informações com parceiros confiáveis apenas para operar a plataforma ou cumprir obrigações legais.';

  @override
  String get privacySectionSecurityTitle => '4. Segurança';

  @override
  String get privacySectionSecurityBody =>
      'Adotamos medidas de segurança rigorosas para proteger seus dados, incluindo criptografia e servidores seguros.';

  @override
  String get privacySectionRightsTitle => '5. Seus direitos';

  @override
  String get privacySectionRightsBody =>
      'Você pode solicitar o acesso, a correção ou a exclusão dos seus dados a qualquer momento entrando em contato conosco.';

  @override
  String get privacySectionContactTitle => '6. Fale conosco';

  @override
  String get privacySectionContactBody =>
      'Em caso de dúvidas, entre em contato conosco pelo:\n\nE-mail: helaliadnan877@gmail.com';

  @override
  String get privacyLastUpdated => 'Última atualização: 2025';

  @override
  String get purchaseOrders => 'Ordens de compra';

  @override
  String get pendingApproval => 'Aguardando aprovação';

  @override
  String get totalValue => 'Valor total';

  @override
  String get allOrders => 'Todos os pedidos';

  @override
  String ordersFoundCount(int count) {
    return '$count pedidos encontrados';
  }

  @override
  String totalAmountLabel(String amount) {
    return 'Total: \$$amount';
  }

  @override
  String get noOrdersFound => 'Nenhum pedido encontrado';

  @override
  String orderPoPrefix(String id) {
    return 'Pedido #PO-$id';
  }

  @override
  String get orderDeleteType => 'o pedido';

  @override
  String itemsCount(int count) {
    return '$count itens';
  }

  @override
  String get loadingActiveOffers => 'Carregando ofertas ativas...';

  @override
  String failedLoadActiveOffers(String error) {
    return 'Falha ao carregar as ofertas ativas: $error';
  }

  @override
  String get selectOffersToCreateOrder =>
      'Selecione ofertas para criar um pedido';

  @override
  String get totalOrderPrice => 'Preço total do pedido';

  @override
  String get orderNoteHint => 'Observação do pedido';

  @override
  String get createOrder => 'Criar pedido';

  @override
  String ordersCreatedSuccess(int count) {
    return '$count pedido(s) criado(s) com sucesso!';
  }

  @override
  String get fixQuantityErrors =>
      'Corrija os erros de quantidade antes de enviar';

  @override
  String get selectAtLeastOneItem => 'Selecione pelo menos um item';

  @override
  String maxStockLabel(String stock) {
    return 'Máx.: $stock';
  }

  @override
  String idPrefix(String id) {
    return 'ID -- $id';
  }

  @override
  String get totalPrice => 'Preço total';

  @override
  String get qtyHint => 'Qtd.';

  @override
  String get myStoreCatalog => 'Catálogo da minha loja';

  @override
  String get activeProducts => 'Produtos ativos';

  @override
  String get potentialProfit => 'Lucro potencial';

  @override
  String get searchCatalogHint => 'Pesquisar no catálogo...';

  @override
  String get activeOnly => 'Somente ativos';

  @override
  String get addProduct => 'Adicionar produto';

  @override
  String get addProducts => 'Adicionar produtos';

  @override
  String get addProductsGoToOffers =>
      'Para adicionar produtos, acesse a seção Ofertas de fornecedores.';

  @override
  String get goToOffers => 'Ir para as ofertas';

  @override
  String get noProductsInCatalog => 'Nenhum produto no catálogo';

  @override
  String get addProductToGetStarted => 'Adicione um produto para começar';

  @override
  String estProfitLabel(String amount) {
    return 'Lucro est.: \$$amount';
  }

  @override
  String get itemDeleteType => 'o item';

  @override
  String get offerUpdatedSuccess => 'Oferta atualizada com sucesso';

  @override
  String get catalogItemUpdatedSuccess =>
      'Item do catálogo atualizado com sucesso';

  @override
  String get supplierOffers => 'Ofertas de fornecedores';

  @override
  String get totalOffers => 'Total de ofertas';

  @override
  String get allOffersReceived => 'Todas as ofertas recebidas';

  @override
  String get availableOffers => 'Ofertas disponíveis';

  @override
  String get readyToReview => 'Prontas para análise';

  @override
  String get searchProductsOrSuppliersHint =>
      'Pesquisar produtos ou fornecedores...';

  @override
  String get filterByCategory => 'Filtrar por categoria';

  @override
  String get categoryAll => 'Todas';

  @override
  String get categoryBeverages => 'Bebidas';

  @override
  String get categorySnacks => 'Salgadinhos';

  @override
  String get categoryFruits => 'Frutas';

  @override
  String get categoryVegetables => 'Legumes';

  @override
  String get categoryDairy => 'Laticínios';

  @override
  String get categoryEggs => 'Ovos';

  @override
  String get buyPriceMultiline => 'Preço\nde compra';

  @override
  String get noResultsFound => 'Nenhum resultado encontrado';

  @override
  String get offerAddedSuccess => 'Oferta adicionada com sucesso';

  @override
  String get inventoryOverview => 'Visão geral do estoque';

  @override
  String get totalItems => 'Total de itens';

  @override
  String get outOfStock => 'Sem estoque';

  @override
  String get searchProductsHint => 'Pesquisar produtos...';

  @override
  String allItemsWithCount(int count) {
    return 'Todos os itens ($count)';
  }

  @override
  String lowStockWithCount(int count) {
    return 'Estoque baixo ($count)';
  }

  @override
  String outOfStockWithCount(int count) {
    return 'Sem estoque ($count)';
  }

  @override
  String get noItemsFound => 'Nenhum item encontrado';

  @override
  String get tryAdjustSearchOrFilter => 'Tente ajustar sua pesquisa ou filtro.';

  @override
  String get stockAddedSuccess => 'Estoque adicionado com sucesso';

  @override
  String get addStock => 'Adicionar estoque';

  @override
  String get stockLevel => 'Nível de estoque';

  @override
  String get minStock => 'Estoque mínimo';

  @override
  String get lastUpdated => 'Última atualização';

  @override
  String get stockDetails => 'Detalhes do estoque';

  @override
  String get stockInfo => 'Informações do estoque';

  @override
  String get storeProduct => 'Produto da loja';

  @override
  String get supplierProduct => 'Produto do fornecedor';

  @override
  String get stockQty => 'Qtd. em estoque';

  @override
  String get totalIncome => 'Receita total';

  @override
  String get totalExpenses => 'Despesas totais';

  @override
  String get currentBalance => 'Saldo atual';

  @override
  String get transactionHistory => 'Histórico de transações';

  @override
  String get noTransactionsYet => 'Ainda não há transações';

  @override
  String ledgerRefLabel(String type, String id) {
    return 'Ref. $type-$id';
  }

  @override
  String get somethingWentWrong => 'Algo deu errado';

  @override
  String get pdfSavedSuccess => 'PDF salvo com sucesso';

  @override
  String get savePdf => 'Salvar PDF';

  @override
  String get sharePdf => 'Compartilhar PDF';

  @override
  String get pdfStoreLedgerReport => 'RELATÓRIO DO LIVRO-RAZÃO DA LOJA';

  @override
  String pdfStoreName(String storeName) {
    return 'Nome da loja: $storeName';
  }

  @override
  String pdfGeneratedAt(String dateTime) {
    return 'Gerado em: $dateTime';
  }

  @override
  String get pdfSummary => 'RESUMO';

  @override
  String pdfTotalCredits(String amount) {
    return 'Total de créditos : \$$amount';
  }

  @override
  String pdfTotalDebits(String amount) {
    return 'Total de débitos : \$$amount';
  }

  @override
  String pdfBalance(String amount) {
    return 'Saldo : \$$amount';
  }

  @override
  String get pdfColDate => 'Data';

  @override
  String get pdfColOrder => 'Pedido';

  @override
  String get pdfColType => 'Tipo';

  @override
  String get pdfColAmount => 'Valor';

  @override
  String get pdfColNotes => 'Observações';

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
