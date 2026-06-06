import 'package:B2B/app/core/cache/cache_data_source.dart';
import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/core/cache/hive_service.dart';
import 'package:B2B/app/core/networking/dio_factory.dart';
import 'package:B2B/app/features/auth/data/repos/login_repo.dart';
import 'package:B2B/app/features/auth/data/repos/register_repo.dart';
import 'package:B2B/app/features/auth/logic/login/login_cubit.dart';
import 'package:B2B/app/features/auth/logic/register/register_cubit.dart';
import 'package:B2B/app/features/home/data/data_sources/local_data_source.dart';
import 'package:B2B/app/features/home/data/data_sources/remote_data_source.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_cache_model.dart';
import 'package:B2B/app/features/home/data/repos/home_repo.dart';
import 'package:B2B/app/features/home/data/repos/home_repo_impl.dart';
import 'package:B2B/app/features/home/logic/home_cubit.dart';
import 'package:B2B/app/features/offers/data/data_sources/local_data_source.dart';
import 'package:B2B/app/features/offers/data/models/offers_cache_model.dart';
import 'package:B2B/app/features/offers/data/data_sources/remote_data_source.dart';
import 'package:B2B/app/features/offers/data/repos/offers_repos/offers_repo.dart';
import 'package:B2B/app/features/offers/data/repos/offers_repos/offers_repo_imp.dart';
import 'package:B2B/app/features/offers/logic/offers_cubit.dart';
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

  // ⚠️ cache fix (important)
}
