import 'dart:async';

import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_state.dart';
import 'package:B2B/app/features/catalog/logic/catalog_ui_cubit/catalog_ui_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class CatalogUiCubit extends Cubit<CatalogUiState> {
  final CatalogCubit _catalogCubit;
  StreamSubscription<CatalogState>? _subscription;
  bool _hasRetriedAfterFailure = false;
  TextEditingController searchController = TextEditingController();
  CatalogUiCubit(this._catalogCubit) : super(const CatalogUiState()) {
    _subscription = _catalogCubit.stream.listen(_onCatalogState);
    _onCatalogState(_catalogCubit.state);

    _catalogCubit.state.maybeWhen(
      initial: () => _catalogCubit.load(),
      orElse: () {},
    );
  }
  void search(String value) {
    _catalogCubit.load(
      page: 1,
      isActive: state.activeOnly,
      search: searchController.text,
    );
  }

  void _onCatalogState(CatalogState catalogState) {
    catalogState.when(
      initial: () {
        emit(state.copyWith(isLoading: state.response == null));
      },
      loading: () {
        emit(state.copyWith(isLoading: state.response == null));
      },
      success: (response) {
        _hasRetriedAfterFailure = false;
        emit(state.copyWith(
          response: response,
          isLoading: false,
          error: null,
        ));
      },
      failure: (error) {
        final hadResponse = state.response != null;
        emit(state.copyWith(
          isLoading: false,
          error: error,
        ));
        if (hadResponse && !_hasRetriedAfterFailure) {
          _hasRetriedAfterFailure = true;
          _catalogCubit.refresh();
        }
      },
    );
  }

  void toggleActiveOnly() {
    final activeOnly = !state.activeOnly;
    emit(state.copyWith(activeOnly: activeOnly));
    _catalogCubit.load(isActive: activeOnly ? true : null);
  }

  void onErrorShown() {
    if (state.error != null) {
      emit(state.copyWith(error: null));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
