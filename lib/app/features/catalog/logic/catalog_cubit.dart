import 'dart:async';

import 'package:B2B/app/features/catalog/logic/catalog_state.dart';
import 'package:bloc/bloc.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/catalog/data/repos/catalog_repo.dart';

class CatalogCubit extends Cubit<CatalogState> {
  final CatalogRepo _catalogRepo;

  bool _isLoading = false;
  bool _isRefreshing = false;

  Timer? _periodicTimer;

  int _page = 1;
  bool? _isActive;
  int _perPage = 15;

  CatalogCubit(this._catalogRepo) : super(const CatalogState.initial()) {
    load();
  }

  Future<void> load({
    int page = 1,
    bool? isActive,
    int perPage = 15,
  }) async {
    if (_isLoading) return;

    _isLoading = true;

    _page = page;
    _isActive = isActive;
    _perPage = perPage;

    final cached = await _catalogRepo.getCachedCatalog(
      page: page,
      isActive: isActive,
      perPage: perPage,
    );

    if (cached != null) {
      emit(CatalogState.success(cached));

      final cachedAt = await _catalogRepo.getCachedCatalogAt(
        page: page,
        isActive: isActive,
        perPage: perPage,
      );

      if (_catalogRepo.shouldRefreshCatalog(cachedAt)) {
        unawaited(_refreshSilently());
      }

      startAutoRefresh();

      _isLoading = false;
      return;
    }

    final hasData = state.maybeWhen(
      success: (_) => true,
      orElse: () => false,
    );

    if (!hasData) {
      emit(const CatalogState.loading());
    }

    final response = await _catalogRepo.getCatalog(
      page: page,
      isActive: isActive,
      perPage: perPage,
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;

        emit(CatalogState.success(data));
      },
      failure: (error) {
        if (isClosed) return;

        emit(
          CatalogState.failure(
            error: error.apiErrorModel.message ?? '',
          ),
        );
      },
    );

    startAutoRefresh();

    _isLoading = false;
  }

  Future<void> refresh() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final response = await _catalogRepo.getCatalog(
      page: _page,
      isActive: _isActive,
      perPage: _perPage,
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;

        emit(CatalogState.success(data));
      },
      failure: (error) {
        if (!isClosed) {
          emit(
            CatalogState.failure(
              error: error.apiErrorModel.message ?? '',
            ),
          );
        }
      },
    );

    _isRefreshing = false;
  }

  Future<void> _refreshSilently() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final response = await _catalogRepo.getCatalog(
      page: _page,
      isActive: _isActive,
      perPage: _perPage,
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;

        final isSame = state.maybeWhen(
          success: (oldData) => oldData == data,
          orElse: () => false,
        );

        if (!isSame) {
          emit(CatalogState.success(data));
        }
      },
      failure: (_) {},
    );

    _isRefreshing = false;
  }

  Future<void> clearCache() async {
    await _catalogRepo.clearCatalog(
      page: _page,
      isActive: _isActive,
      perPage: _perPage,
    );

    await load(
      page: _page,
      isActive: _isActive,
      perPage: _perPage,
    );
  }

  void startAutoRefresh() {
    _periodicTimer?.cancel();

    _periodicTimer = Timer.periodic(
      const Duration(minutes: 5),
      (_) => _refreshSilently(),
    );
  }

  @override
  Future<void> close() {
    _periodicTimer?.cancel();
    return super.close();
  }
}
