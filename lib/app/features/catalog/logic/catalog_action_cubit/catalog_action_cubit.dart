import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/catalog/data/repos/get_catalog/catalog_repo.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_state.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogActionCubit extends Cubit<CatalogActionState> {
  final CatalogRepo _repo;

  CatalogActionCubit(this._repo) : super(const CatalogActionState.initial());

  Future<void> toggleActive({
    required int catalogId,
    required double sellPrice,
    required bool isActive,
  }) async {
    emit(const CatalogActionState.loading());

    final response = await _repo.patchCatalogItem(
      catalogId: catalogId,
      sellPrice: sellPrice,
      isActive: !isActive,
    );

    response.when(
      success: (_) {
        getIt<CatalogCubit>().clearCache();

        emit(
          const CatalogActionState.success(),
        );
      },
      failure: (error) {
        emit(
          CatalogActionState.failure(
            error: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }

  Future<void> patch({
    required int catalogId,
    required double sellPrice,
    required bool isActive,
  }) async {
    emit(const CatalogActionState.loading());

    final response = await _repo.patchCatalogItem(
      catalogId: catalogId,
      sellPrice: sellPrice,
      isActive: isActive,
    );

    response.when(
      success: (_) {
        getIt<CatalogCubit>().clearCache();

        emit(
          const CatalogActionState.success(),
        );
      },
      failure: (error) {
        emit(
          CatalogActionState.failure(
            error: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }

  Future<void> delete({
    required int catalogId,
  }) async {
    emit(const CatalogActionState.loading());

    final response = await _repo.deleteCatalogItem(
      catalogId: catalogId,
    );

    response.when(
      success: (_) {
        getIt<CatalogCubit>().clearCache();

        emit(
          const CatalogActionState.success(),
        );
      },
      failure: (error) {
        emit(
          CatalogActionState.failure(
            error: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }
}
