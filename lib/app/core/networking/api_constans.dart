class ApiConstants {
  static const String apiBaseUrl = "http://192.168.100.22:8000/api/store/";
  static const String login = 'login';
  static const String register = 'register';
  static const String logout = 'logout';
  static const String homeDashboard = 'dashboard';
  static const String offers = 'offers';
  static const String catalog = 'catalog';
  static const String orders = 'orders';
  static const String profile = 'profile';
  static const String ledger = 'ledger';
  static const String stock = 'inventory';
  static const String addStock = 'manual-add';
}

class ApiErrors {
  static const String badRequestError = "bad Request Error";
  static const String noContent = "no Content";
  static const String forbiddenError = "forbidden Error";
  static const String unauthorizedError = "unauthorized Error";
  static const String notFoundError = "not Found Error";
  static const String conflictError = "conflict Error";
  static const String internalServerError = "internal Server Error";
  static const String unknownError = "unknown Error";
  static const String timeoutError = "timeou tError";
  static const String defaultError = "Invalid credentials.";
  static const String cacheError = "cache Error";
  static const String noInternetError = "no InternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
