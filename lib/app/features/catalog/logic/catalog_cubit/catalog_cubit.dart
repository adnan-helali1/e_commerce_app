import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/catalog/data/repos/catalog_repo.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_state.dart';

class CatalogCubit extends Cubit<CatalogState> {
  final CatalogRepo _repo;

  CatalogCubit(this._repo) : super(const CatalogState.initial());

  /// STATE CONTROL
  bool _isLoading = false;
  bool _isRefreshing = false;

  /// PAGINATION
  int _page = 1;
  bool? _isActive;
  int _perPage = 15;

  /// AUTO REFRESH
  Timer? _timer;

  /// REQUEST VERSION (🔥 يمنع race conditions)
  int _requestId = 0;

  /// =========================
  /// 🚀 LOAD (Local First)
  /// =========================
  Future<void> load({
    int page = 1,
    bool? isActive,
    int perPage = 15,
  }) async {
    if (_isLoading) return;

    _isLoading = true;
    _requestId++;

    final currentRequest = _requestId;

    _page = page;
    _isActive = isActive;
    _perPage = perPage;

    /// ✅ 1. GET CACHE
    final cached = await _repo.getCachedCatalog(
      page: page,
      isActive: isActive,
      perPage: perPage,
    );

    if (cached != null) {
      emit(CatalogState.success(cached));

      /// 🔥 background refresh
      _silentRefreshIfNeeded();

      _isLoading = false;
      return;
    }

    /// ✅ 2. LOADING (only if no data)
    if (!_hasData()) {
      emit(const CatalogState.loading());
    }

    /// ✅ 3. FETCH FROM API
    final result = await _repo.getCatalog(
      page: page,
      isActive: isActive,
      perPage: perPage,
      forceRefresh: true,
    );

    /// 🚨 ignore outdated response
    if (currentRequest != _requestId) return;

    result.when(
      success: (data) {
        if (!isClosed) {
          emit(CatalogState.success(data));
        }
      },
      failure: (error) {
        if (!isClosed) {
          emit(CatalogState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        }
      },
    );

    _isLoading = false;
  }

  /// =========================
  /// 🔄 USER REFRESH
  /// =========================
  Future<void> refresh() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final result = await _repo.getCatalog(
      page: _page,
      isActive: _isActive,
      perPage: _perPage,
      forceRefresh: true,
    );

    result.when(
      success: (data) {
        if (!isClosed) {
          emit(CatalogState.success(data));
        }
      },
      failure: (error) {
        if (!isClosed) {
          emit(CatalogState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        }
      },
    );

    _isRefreshing = false;
  }

  /// =========================
  /// 🤫 SILENT REFRESH
  /// =========================
  Future<void> _silentRefreshIfNeeded() async {
    final cachedAt = await _repo.getCachedCatalogAt(
      page: _page,
      isActive: _isActive,
      perPage: _perPage,
    );

    if (!_repo.shouldRefreshCatalog(cachedAt)) return;

    _silentRefresh();
  }

  Future<void> _silentRefresh() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final result = await _repo.getCatalog(
      page: _page,
      isActive: _isActive,
      perPage: _perPage,
      forceRefresh: true,
    );

    result.when(
      success: (newData) {
        if (isClosed) return;

        final oldData = state.maybeWhen(
          success: (data) => data,
          orElse: () => null,
        );

        /// 🔥 smart diff (no rebuild if same)
        if (oldData != newData) {
          emit(CatalogState.success(newData));
        }
      },
      failure: (_) {},
    );

    _isRefreshing = false;
  }

  /// =========================
  /// 🧹 CLEAR CACHE
  /// =========================
  Future<void> clearCache() async {
    await _repo.clearCatalog(
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

  /// =========================
  /// 🧠 HELPERS
  /// =========================
  bool _hasData() {
    return state.maybeWhen(
      success: (_) => true,
      orElse: () => false,
    );
  }

  /// =========================
  /// ❌ CLOSE
  /// =========================
  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
