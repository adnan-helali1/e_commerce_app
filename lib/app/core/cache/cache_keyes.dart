class CacheKeys {
  CacheKeys._();

  static const String homeBox = 'home_box';
  static const String homeDashboard = 'home_dashboard';
  static const String homeDashboardCachedAt = 'home_dashboard_cached_at';

  static const String offersBox = 'offers_box';
  static const Duration homeDashboardTtl = Duration(minutes: 5);
}

String buildOffersCacheKey({
  required int page,
  required int category,
  required String status,
  required String search,
}) {
  return 'offers_${page}_${category}_${status}_$search';
}
