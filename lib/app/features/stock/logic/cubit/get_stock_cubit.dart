import 'dart:async';
import 'package:B2B/app/features/stock/data/repos/get_stock/get_stock_repo.dart';
import 'package:B2B/app/features/stock/logic/cubit/get_stock_state.dart';
import 'package:bloc/bloc.dart';
import 'package:B2B/app/core/networking/api_result.dart';

class GetStockCubit extends Cubit<GetStockState> {
  final GetStockRepo _stockRepo;

  bool _isLoading = false;
  bool _isRefreshing = false;

  GetStockCubit(this._stockRepo) : super(const GetStockState.initial()) {
    load();
  }

  // ---------------------------------------------------------------------------
  // Load (cache-first)
  // ---------------------------------------------------------------------------

  Future<void> load() async {
    if (_isLoading) return;

    _isLoading = true;

    final cached = await _stockRepo.getCachedStock();

    // ✅ Show cache immediately
    if (cached != null) {
      emit(GetStockState.success(cached));

      final cachedAt = await _stockRepo.getCachedStockAt();

      if (_stockRepo.shouldRefreshStock(cachedAt)) {
        unawaited(_refreshSilently());
      }

      _isLoading = false;
      return;
    }

    final hasData = state.maybeWhen(
      success: (_) => true,
      orElse: () => false,
    );

    if (!hasData) {
      emit(const GetStockState.loading());
    }

    final response = await _stockRepo.getStock(forceRefresh: true);

    response.when(
      success: (data) {
        if (isClosed) return;
        emit(GetStockState.success(data));
      },
      failure: (error) {
        if (isClosed) return;

        // 🔥 Fallback to cache on failure
        _stockRepo.getCachedStock().then((cachedOnFailure) {
          if (isClosed) return;

          if (cachedOnFailure != null) {
            emit(GetStockState.success(cachedOnFailure));
            return;
          }

          emit(GetStockState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        });
      },
    );

    _isLoading = false;
  }

  // ---------------------------------------------------------------------------
  // Manual refresh
  // ---------------------------------------------------------------------------

  Future<void> refresh() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final cached = await _stockRepo.getCachedStock();

    if (cached != null) {
      final isSame = state.maybeWhen(
        success: (oldData) => oldData != cached,
        orElse: () => false,
      );
      if (!isSame) {
        emit(GetStockState.success(cached));
      }
    }

    final response = await _stockRepo.getStock(forceRefresh: true);

    response.when(
      success: (data) {
        if (isClosed) return;

        final isSame = state.maybeWhen(
          success: (oldData) => oldData == data,
          orElse: () => false,
        );
        if (!isSame) {
          emit(GetStockState.success(data));
        }
      },
      failure: (error) {
        if (cached == null && !isClosed) {
          emit(GetStockState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        }
      },
    );

    _isRefreshing = false;
  }

  // ---------------------------------------------------------------------------
  // Silent background refresh
  // ---------------------------------------------------------------------------

  Future<void> _refreshSilently() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final response = await _stockRepo.getStock(forceRefresh: true);

    response.when(
      success: (data) {
        if (isClosed) {
          _isRefreshing = false;
          return;
        }

        final isSameData = state.maybeWhen(
          success: (oldData) => oldData == data,
          orElse: () => false,
        );

        if (isSameData) {
          _isRefreshing = false;
          return;
        }

        emit(GetStockState.success(data));
      },
      failure: (_) {},
    );

    _isRefreshing = false;
  }

  // ---------------------------------------------------------------------------
  // Clear cache
  // ---------------------------------------------------------------------------

  Future<void> clearCache() async {
    await _stockRepo.clearStock();
    await load();
  }
}
