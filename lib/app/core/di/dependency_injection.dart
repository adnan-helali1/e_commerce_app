import 'package:B2B/app/core/cache/cache_data_source.dart';
import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/core/cache/hive_service.dart';
import 'package:B2B/app/core/networking/dio_factory.dart';
import 'package:B2B/app/core/pdf_services/pdf_export_service.dart';
import 'package:B2B/app/features/auth/data/repos/login_repo.dart';
import 'package:B2B/app/features/auth/data/repos/register_repo.dart';
import 'package:B2B/app/features/auth/logic/login/login_cubit.dart';
import 'package:B2B/app/features/auth/logic/register/register_cubit.dart';
import 'package:B2B/app/features/catalog/data/data_sources/get_catalog/catalog_local_data_source.dart';
import 'package:B2B/app/features/catalog/data/data_sources/get_catalog/catalog_remote_data_source.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_cache_model.dart';
import 'package:B2B/app/features/catalog/data/repos/get_catalog/catalog_repo.dart';
import 'package:B2B/app/features/catalog/data/repos/get_catalog/catalog_repo_imp.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_cubit.dart';
import 'package:B2B/app/features/home/data/data_sources/local_data_source.dart';
import 'package:B2B/app/features/home/data/data_sources/remote_data_source.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_cache_model.dart';
import 'package:B2B/app/features/home/data/repos/home_repo.dart';
import 'package:B2B/app/features/home/data/repos/home_repo_impl.dart';
import 'package:B2B/app/features/home/logic/home_cubit.dart';
import 'package:B2B/app/features/ledger/data/data_sources/ledger_local_data_source.dart';
import 'package:B2B/app/features/ledger/data/data_sources/ledger_remote_data_source.dart';
import 'package:B2B/app/features/ledger/data/models/ledger_cache_model.dart';
import 'package:B2B/app/features/ledger/data/repos/ledger_repo.dart';
import 'package:B2B/app/features/ledger/data/repos/ledger_repo_imp.dart';
import 'package:B2B/app/features/ledger/logic/cubit/ledger_cubit.dart';
import 'package:B2B/app/features/offers/data/data_sources/add_offer_remote_data_source.dart';
import 'package:B2B/app/features/offers/data/data_sources/local_data_source.dart';
import 'package:B2B/app/features/offers/data/models/offers_cache_model.dart';
import 'package:B2B/app/features/offers/data/data_sources/remote_data_source.dart';
import 'package:B2B/app/features/offers/data/repos/add_offer_to_cataolg_repo/add_offer_imp.dart';
import 'package:B2B/app/features/offers/data/repos/add_offer_to_cataolg_repo/add_offer_repo.dart';
import 'package:B2B/app/features/offers/data/repos/offers_repos/offers_repo.dart';
import 'package:B2B/app/features/offers/data/repos/offers_repos/offers_repo_imp.dart';
import 'package:B2B/app/features/offers/logic/add_offer_cubit/add_offer_cubit.dart';
import 'package:B2B/app/features/offers/logic/offers_cubit/offers_cubit.dart';
import 'package:B2B/app/features/orders/data/data_sources/create_order_remote_data_source.dart';
import 'package:B2B/app/features/orders/data/data_sources/get_active_offers_remote_datasource.dart';
import 'package:B2B/app/features/orders/data/data_sources/get_orders/get_orders_local_data_source.dart';
import 'package:B2B/app/features/orders/data/data_sources/get_orders/get_orders_remote_data_source.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/cache/orders_cache_model.dart';
import 'package:B2B/app/features/orders/data/repos/create_order_repo.dart';
import 'package:B2B/app/features/orders/data/repos/get_active_offers_repo.dart';
import 'package:B2B/app/features/orders/data/repos/get_orders/get_orders_imp.dart';
import 'package:B2B/app/features/orders/data/repos/get_orders/get_orders_repo.dart';
import 'package:B2B/app/features/orders/logic/create_order/create_order_cubit.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_cubit.dart';
import 'package:B2B/app/features/orders/logic/ui_create_order/ui_create_order_cubit.dart';
import 'package:B2B/app/features/orders/logic/get_offers/get_active_offers_cubit.dart';
import 'package:B2B/app/features/profile/data/data_sources/profile_local_data_source.dart';
import 'package:B2B/app/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:B2B/app/features/profile/data/data_sources/update_profile_remote_data_source.dart';
import 'package:B2B/app/features/profile/data/models/profile_cache_model.dart';
import 'package:B2B/app/features/profile/data/repos/profile_repo.dart';
import 'package:B2B/app/features/profile/data/repos/profile_repo_imp.dart';
import 'package:B2B/app/features/profile/data/repos/update_profile_repo.dart';
import 'package:B2B/app/features/profile/logic/get_profile/profile_cubit.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_cubit.dart';
import 'package:B2B/app/features/stock/data/data_sources/get_stock_local_data_source.dart';
import 'package:B2B/app/features/stock/data/data_sources/get_stock_remote_data_source.dart';
import 'package:B2B/app/features/stock/data/models/get_stock_models/get_stock_cache_model.dart';
import 'package:B2B/app/features/stock/data/repos/get_stock/get_stock_repo.dart';
import 'package:B2B/app/features/stock/data/repos/get_stock/get_stock_repo_imp.dart';
import 'package:B2B/app/features/stock/logic/cubit/get_stock_cubit.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  await Hive.initFlutter();

  final dio = await DioFactory.getDio();

  // Core
  getIt.registerLazySingleton(() => ApiService(dio));
  getIt.registerLazySingleton(() => HiveService());
  getIt.registerLazySingleton(() => CacheDataSource<dynamic>(getIt()));
  getIt.registerLazySingleton(
    () => CacheDataSource<HomeDashboardCacheModel>(getIt()),
  );
  getIt.registerLazySingleton(
    () => CacheDataSource<OffersCacheModel>(getIt()),
  );

  // Auth
  getIt.registerLazySingleton(() => LoginRepo(getIt()));
  getIt.registerFactory(() => LoginCubit(getIt()));

  getIt.registerLazySingleton(() => RegisterRepo(getIt()));
  getIt.registerFactory(() => RegisterCubit(getIt()));

  // Home
  getIt.registerLazySingleton(() => HomeRemoteDataSource(getIt()));
  getIt.registerLazySingleton(() => HomeLocalDataSource(getIt()));
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(getIt(), getIt()),
  );
  getIt.registerFactory(() => HomeCubit(getIt()));

  // Offers

  getIt.registerLazySingleton(() => OffersRemoteDataSource(getIt()));
  getIt.registerLazySingleton(() => OffersLocalDataSource(getIt()));
  getIt.registerLazySingleton<OffersRepo>(
    () => OffersRepoImpl(getIt(), getIt()),
  );
  getIt.registerFactory(() => OffersCubit(getIt()));

// add offer to catalog
  getIt.registerFactory(() => AddOfferRemoteDataSource(getIt()));
  getIt.registerLazySingleton<AddOfferRepo>(
    () => AddOfferRepoImpl(getIt()),
  );

  getIt.registerFactory(
    () => AddOfferCubit(getIt()),
  );

// catalog
  getIt.registerLazySingleton(
    () => CacheDataSource<CatalogCacheModel>(getIt()),
  );
  getIt.registerLazySingleton(() => CatalogLocalDataSource(getIt()));
  getIt.registerLazySingleton(() => CatalogRemoteDataSource(getIt()));
  getIt.registerLazySingleton<CatalogRepo>(
    () => CatalogRepoImpl(getIt(), getIt()),
  );
  getIt.registerFactory(
    () => CatalogCubit(getIt()),
  );
  getIt.registerFactory(
    () => CatalogActionCubit(getIt()),
  );

  // orders

  getIt.registerLazySingleton(() => GetActiveOffersRemoteDatasource(getIt()));
  getIt.registerLazySingleton(() => GetActiveOffersRepo(getIt()));

  getIt.registerFactory(
    () => GetActiveOffersCubit(getIt()),
  );
  getIt.registerFactory(
    () => UiCreateOrderCubit(),
  );
  getIt.registerLazySingleton(() => CreateOrderRemoteDataSource(getIt()));
  getIt.registerLazySingleton(() => CreateOrderRepo(getIt()));
  getIt.registerFactory(() => CreateOrderCubit(getIt())); // Orders
  getIt.registerLazySingleton(
    () => CacheDataSource<OrdersCacheModel>(getIt()),
  );

  //get orders

  getIt.registerLazySingleton(() => GetOrdersRemoteDataSource(getIt()));
  getIt.registerLazySingleton(() => OrdersLocalDataSource(getIt()));
  getIt.registerLazySingleton<OrdersRepo>(
    () => OrdersRepoImpl(getIt(), getIt()),
  );
  getIt.registerFactory(() => OrdersCubit(getIt()));

  //profile

  getIt.registerLazySingleton(() => ProfileRemoteDataSource(getIt()));
  getIt.registerLazySingleton(
    () => CacheDataSource<ProfileCacheModel>(getIt()),
  );
  getIt.registerLazySingleton(() => ProfileLocalDataSource(getIt()));
  getIt.registerLazySingleton<ProfileRepo>(
      () => ProfileRepoImpl(getIt(), getIt()));
  getIt.registerLazySingleton(() => UpdateProfileRemoteDataSource(getIt()));
  getIt.registerLazySingleton(() => UpdateProfileRepo(getIt()));

  getIt.registerFactory(() => UpdateProfileCubit(getIt()));

  getIt.registerFactory(() => ProfileCubit(getIt()));

  //ledger
  getIt.registerLazySingleton(() => LedgerRemoteDataSource(getIt()));
  getIt.registerLazySingleton<CacheDataSource<LedgerCacheModel>>(
    () => CacheDataSource<LedgerCacheModel>(getIt()),
  );
  getIt.registerLazySingleton(() => LedgerLocalDataSource(getIt()));
  getIt.registerLazySingleton<LedgerRepo>(
    () => LedgerRepoImpl(getIt(), getIt()),
  );
  getIt.registerLazySingleton<PdfExportService>(
    () => PdfExportService(),
  );

  getIt.registerFactory(
    () => LedgerCubit(
      getIt<LedgerRepo>(),
      getIt<PdfExportService>(),
    ),
  );

  // stock
  // ✅ 1. سجله أول شي
  getIt.registerLazySingleton<CacheDataSource<GetStockCacheModel>>(
    () => CacheDataSource<GetStockCacheModel>(
      getIt(),
    ),
  );

// 2. بعدين هذا
  getIt.registerLazySingleton<GetStockLocalDataSource>(
    () => GetStockLocalDataSource(
      getIt<CacheDataSource<GetStockCacheModel>>(),
    ),
  );

  getIt.registerLazySingleton<GetStockRemoteDataSource>(
    () => GetStockRemoteDataSource(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<GetStockRepo>(
    () => GetStockRepoImpl(
      getIt<GetStockLocalDataSource>(),
      getIt<GetStockRemoteDataSource>(),
    ),
  );

  getIt.registerFactory<GetStockCubit>(
    () => GetStockCubit(
      getIt<GetStockRepo>(),
    ),
  );
}
