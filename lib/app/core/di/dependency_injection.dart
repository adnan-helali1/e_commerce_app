import 'package:B2B/app/core/networking/api_service.dart';
import 'package:B2B/app/core/networking/dio_factory.dart';
import 'package:B2B/app/core/services/token_storage_service.dart';
import 'package:B2B/app/features/auth/data/repos/login_repo.dart';
import 'package:B2B/app/features/auth/data/repos/register_repo.dart';
import 'package:B2B/app/features/auth/logic/cubit/login_cubit.dart';
import 'package:B2B/app/features/auth/logic/cubit/register_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Token Storage Service
  getIt.registerLazySingleton<TokenStorageService>(
    () => TokenStorageService(),
  );

  // login
  getIt.registerLazySingleton<LoginRepo>(
    () => LoginRepo(getIt(), tokenStorage: getIt()),
  );
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // register
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
}
