import 'dart:async';
import 'dart:typed_data';

import 'package:B2B/app/core/helpers/shared_pref_helper.dart';
import 'package:B2B/app/core/pdf_services/pdf_export_service.dart';
import 'package:B2B/app/features/ledger/data/models/ledger_response.dart';
import 'package:B2B/app/features/ledger/logic/cubit/ledger_state.dart';
import 'package:B2B/app/features/ledger/ui/widgets/ledger_filter_bar.dart';
import 'package:bloc/bloc.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/ledger/data/repos/ledger_repo.dart';
import 'package:intl/intl.dart';
import 'package:printing/printing.dart';

class LedgerCubit extends Cubit<LedgerState> {
  final LedgerRepo _ledgerRepo;
  final PdfExportService _pdfExportService;
  bool _isLoading = false;
  bool _isRefreshing = false;
  Timer? _periodicTimer;
  int _page = 1;
  LedgerCubit(
    this._ledgerRepo,
    this._pdfExportService,
  ) : super(const LedgerState.initial()) {
    load();
  }

  // ---------------------------------------------------------------------------
  // Filter — emits a new state object so BlocBuilder always rebuilds
  // ---------------------------------------------------------------------------

  void setFilter(LedgerFilter filter) {
    state.maybeWhen(
      success: (response, currentFilter) {
        if (currentFilter == filter) return;
        emit(LedgerState.success(response, filter: filter));
      },
      orElse: () {},
    );
  }

  // ---------------------------------------------------------------------------
  // Load
  // ---------------------------------------------------------------------------

  Future<void> load({int page = 1}) async {
    if (_isLoading) return;

    _isLoading = true;
    _page = page;

    final cached = await _ledgerRepo.getCachedLedger(page: page);

    if (cached != null) {
      emit(LedgerState.success(cached, filter: _currentFilter));

      final cachedAt = await _ledgerRepo.getCachedLedgerAt(page: page);
      if (_ledgerRepo.shouldRefreshLedger(cachedAt)) {
        unawaited(_refreshSilently());
      }

      startAutoRefresh();
      _isLoading = false;
      return;
    }

    final hasData = state.maybeWhen(
      success: (_, __) => true,
      orElse: () => false,
    );

    if (!hasData) emit(const LedgerState.loading());

    final response = await _ledgerRepo.getLedger(
      page: page,
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;
        emit(LedgerState.success(data, filter: _currentFilter));
      },
      failure: (error) {
        if (isClosed) return;

        _ledgerRepo.getCachedLedger(page: page).then((cachedOnFailure) {
          if (isClosed) return;

          if (cachedOnFailure != null) {
            emit(LedgerState.success(cachedOnFailure, filter: _currentFilter));
            return;
          }

          emit(LedgerState.failure(error: error.apiErrorModel.message ?? ''));
        });
      },
    );

    startAutoRefresh();
    _isLoading = false;
  }

  // ---------------------------------------------------------------------------
  // Manual refresh
  // ---------------------------------------------------------------------------

  Future<void> refresh() async {
    if (_isRefreshing) return;
    _isRefreshing = true;

    final cached = await _ledgerRepo.getCachedLedger(page: _page);

    if (cached != null) {
      final isSame = state.maybeWhen(
        success: (oldData, __) => oldData == cached,
        orElse: () => false,
      );
      if (!isSame) emit(LedgerState.success(cached, filter: _currentFilter));
    }

    final response = await _ledgerRepo.getLedger(
      page: _page,
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;
        final isSame = state.maybeWhen(
          success: (oldData, __) => oldData == data,
          orElse: () => false,
        );
        if (!isSame) emit(LedgerState.success(data, filter: _currentFilter));
      },
      failure: (error) {
        if (cached == null && !isClosed) {
          emit(LedgerState.failure(error: error.apiErrorModel.message ?? ''));
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
          success: (oldData, __) => oldData == data,
          orElse: () => false,
        );
        if (!isSame) emit(LedgerState.success(data, filter: _currentFilter));
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
      success: (data, __) =>
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
  // Helpers
  // ---------------------------------------------------------------------------

  LedgerFilter get _currentFilter => state.maybeWhen(
        success: (_, filter) => filter,
        orElse: () => LedgerFilter.all,
      );

  // ---------------------------------------------------------------------------
  // Lifecycle
  // ---------------------------------------------------------------------------

  // pdf export
  Future<Uint8List?> exportPdf() async {
    final response = state.maybeWhen(
      success: (response, _) => response,
      orElse: () => null,
    );

    if (response == null) return null;

    final storeName = await SharedPrefHelper.getStoreName();

    return _pdfExportService.generateLedgerReport(
      storeName: storeName ?? 'Store',
      totalCredits: response.data.summary.totalCredits,
      totalDebits: response.data.summary.totalDebits,
      balance: response.data.summary.balance,
      entries: response.data.entries.data.map((e) {
        return LedgerEntryPdfModel(
          date: DateFormat(
            'dd/MM/yyyy HH:mm',
          ).format(e.occurredAt),
          orderId: e.sourceId,
          type: e.type == EntryType.credit ? 'Refund' : 'Purchase',
          amount: e.amount,
          notes: e.notes ?? '-',
        );
      }).toList(),
    );
  }

  @override
  Future<void> close() {
    _periodicTimer?.cancel();
    return super.close();
  }
}
