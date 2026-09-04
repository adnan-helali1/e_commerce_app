import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/catalog/data/repos/get_catalog/catalog_repo.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_state.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum CatalogMutation { toggle, update, delete }

class CatalogActionCubit extends Cubit<CatalogActionState> {
  final CatalogRepo _repo;

  final CatalogCubit _catalogCubit;
  CatalogMutation? activeMutation;

  CatalogActionCubit(this._repo, this._catalogCubit)
      : super(const CatalogActionState.initial());

  Future<void> toggleActive({
    required int catalogId,
    required double sellPrice,
    required bool isActive,
  }) async {
    activeMutation = CatalogMutation.toggle;
    emit(const CatalogActionState.loading());

    final response = await _repo.patchCatalogItem(
      catalogId: catalogId,
      sellPrice: sellPrice,
      isActive: !isActive,
    );

    await response.when(
      success: (_) async {
        await _catalogCubit.refresh();
        if (isClosed) return;
        emit(
          const CatalogActionState.success(),
        );
      },
      failure: (error) async {
        if (isClosed) return;
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
    activeMutation = CatalogMutation.update;
    emit(const CatalogActionState.loading());

    final response = await _repo.patchCatalogItem(
      catalogId: catalogId,
      sellPrice: sellPrice,
      isActive: isActive,
    );

    await response.when(
      success: (_) async {
        await _catalogCubit.refresh();
        if (isClosed) return;
        emit(
          const CatalogActionState.success(),
        );
      },
      failure: (error) async {
        if (isClosed) return;
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
    activeMutation = CatalogMutation.delete;
    emit(const CatalogActionState.loading());

    final response = await _repo.deleteCatalogItem(
      catalogId: catalogId,
    );

    await response.when(
      success: (_) async {
        await _catalogCubit.refresh();
        if (isClosed) return;
        emit(
          const CatalogActionState.success(),
        );
      },
      failure: (error) async {
        if (isClosed) return;
        emit(
          CatalogActionState.failure(
            error: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }
}
