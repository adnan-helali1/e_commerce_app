class CacheKeys {
  CacheKeys._();

  static const String homeBox = 'home_box';
  static const String homeDashboard = 'home_dashboard';
  static const String homeDashboardCachedAt = 'home_dashboard_cached_at';

  static const String offersBox = 'offers_box';
  static const String catalogBox = 'catalog_box';
  static const String ordersBox = 'orders_box'; // ✅ أضف هذا

  static const Duration homeDashboardTtl = Duration(minutes: 5);
}

// catalog
String buildCatalogCacheKey({
  required int page,
  required bool? isActive,
  required int perPage,
  required String search,
}) {
  return 'catalog_${page}_${isActive ?? 'all'}_${perPage}_$search';
}

// offers
String buildOffersCacheKey({
  required int page,
  required int category,
  required String status,
  required String search,
}) {
  return 'offers_${page}_${category}_${status}_$search';
}
