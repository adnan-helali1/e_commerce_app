import 'dart:async';

import 'package:B2B/app/features/ledger/logic/cubit/ledger_state.dart';
import 'package:B2B/app/features/ledger/ui/widgets/ledger_filter_bar.dart';
import 'package:bloc/bloc.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/ledger/data/repos/ledger_repo.dart';

class LedgerCubit extends Cubit<LedgerState> {
  final LedgerRepo _ledgerRepo;

  bool _isLoading = false;
  bool _isRefreshing = false;
  Timer? _periodicTimer;
  int _page = 1;

  // Filter is cubit-owned — no setState needed in UI
  LedgerFilter activeFilter = LedgerFilter.all;

  LedgerCubit(this._ledgerRepo) : super(const LedgerState.initial()) {
    load();
  }

  // ---------------------------------------------------------------------------
  // Filter
  // ---------------------------------------------------------------------------

  void setFilter(LedgerFilter filter) {
    if (activeFilter == filter) return;
    activeFilter = filter;

    // Re-emit current success state to trigger BlocBuilder rebuild
    final current = state.maybeWhen(
      success: (data) => data,
      orElse: () => null,
    );
    if (current != null) emit(LedgerState.success(current));
  }

  // ---------------------------------------------------------------------------
  // Load
  // ---------------------------------------------------------------------------

  Future<void> load({int page = 1}) async {
    if (_isLoading) return;

    _isLoading = true;
    _page = page;

    // ✅ Show cache immediately
    final cached = await _ledgerRepo.getCachedLedger(page: page);

    if (cached != null) {
      emit(LedgerState.success(cached));

      final cachedAt = await _ledgerRepo.getCachedLedgerAt(page: page);

      if (_ledgerRepo.shouldRefreshLedger(cachedAt)) {
        unawaited(_refreshSilently());
      }

      startAutoRefresh();

      _isLoading = false;
      return;
    }

    // No cache → show loading only if no data currently displayed
    final hasData = state.maybeWhen(
      success: (_) => true,
      orElse: () => false,
    );

    if (!hasData) {
      emit(const LedgerState.loading());
    }

    final response = await _ledgerRepo.getLedger(
      page: page,
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;
        emit(LedgerState.success(data));
      },
      failure: (error) {
        if (isClosed) return;

        // 🔥 Fallback: try cache before showing error
        _ledgerRepo.getCachedLedger(page: page).then((cachedOnFailure) {
          if (isClosed) return;

          if (cachedOnFailure != null) {
            emit(LedgerState.success(cachedOnFailure));
            return;
          }

          emit(LedgerState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        });
      },
    );

    startAutoRefresh();

    _isLoading = false;
  }

  // ---------------------------------------------------------------------------
  // Manual refresh (pull-to-refresh)
  // ---------------------------------------------------------------------------

  Future<void> refresh() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final cached = await _ledgerRepo.getCachedLedger(page: _page);

    if (cached != null) {
      final isSame = state.maybeWhen(
        success: (oldData) => oldData == cached,
        orElse: () => false,
      );

      if (!isSame) emit(LedgerState.success(cached));
    }

    final response = await _ledgerRepo.getLedger(
      page: _page,
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;

        final isSame = state.maybeWhen(
          success: (oldData) => oldData == data,
          orElse: () => false,
        );

        if (!isSame) emit(LedgerState.success(data));
      },
      failure: (error) {
        if (cached == null && !isClosed) {
          emit(LedgerState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        }
      },
    );

    _isRefreshing = false;
  }

  // ---------------------------------------------------------------------------
  // Silent background refresh (auto / TTL-triggered)
  // ---------------------------------------------------------------------------

  Future<void> _refreshSilently() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final response = await _ledgerRepo.getLedger(
      page: _page,
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) {
          _isRefreshing = false;
          return;
        }

        final isSame = state.maybeWhen(
          success: (oldData) => oldData == data,
          orElse: () => false,
        );

        if (!isSame) emit(LedgerState.success(data));
      },
      failure: (_) {},
    );

    _isRefreshing = false;
  }

  // ---------------------------------------------------------------------------
  // Pagination
  // ---------------------------------------------------------------------------

  Future<void> loadNextPage() async {
    final hasMore = state.maybeWhen(
      success: (data) =>
          data.data.entries.currentPage < data.data.entries.lastPage,
      orElse: () => false,
    );

    if (!hasMore) return;

    await load(page: _page + 1);
  }

  // ---------------------------------------------------------------------------
  // Cache control
  // ---------------------------------------------------------------------------

  Future<void> clearCache() async {
    await _ledgerRepo.clearLedger(page: _page);
    await load(page: _page);
  }

  // ---------------------------------------------------------------------------
  // Auto-refresh timer
  // ---------------------------------------------------------------------------

  void startAutoRefresh() {
    _periodicTimer?.cancel();

    _periodicTimer = Timer.periodic(
      const Duration(minutes: 5),
      (_) => _refreshSilently(),
    );
  }

  // ---------------------------------------------------------------------------
  // Lifecycle
  // ---------------------------------------------------------------------------

  @override
  Future<void> close() {
    _periodicTimer?.cancel();
    return super.close();
  }
}
