import 'dart:async';

import 'package:B2B/app/features/offers/logic/offers_state.dart';
import 'package:bloc/bloc.dart';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/offers/data/repos/offers_repo.dart';

class OffersCubit extends Cubit<OffersState> {
  final OffersRepo _offersRepo;

  bool _isLoading = false;
  bool _isRefreshing = false;

  Timer? _periodicTimer;
  Timer? _searchDebounce;
  int _page = 1;
  int _category = 0;
  String _status = '';
  String _search = '';

  OffersCubit(this._offersRepo) : super(const OffersState.initial()) {
    load();
  }

  Future<void> load({
    int page = 1,
    int category = 0,
    String status = '',
    String search = '',
  }) async {
    if (_isLoading) return;

    _isLoading = true;

    _page = page;
    _category = category;
    _status = status;
    _search = search;

    final cached = await _offersRepo.getCachedOffers(
      page: page,
      category: category,
      status: status,
      search: search,
    );

    /// ✅ عرض الكاش مباشرة
    if (cached != null) {
      emit(OffersState.success(cached));

      final cachedAt = await _offersRepo.getCachedOffersAt(
        page: page,
        category: category,
        status: status,
        search: search,
      );

      if (_offersRepo.shouldRefreshOffers(cachedAt)) {
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
      emit(const OffersState.loading());
    }
    final response = await _offersRepo.getOffers(
      page: page,
      category: category,
      status: status,
      search: search,
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;

        emit(OffersState.success(data));
      },
      failure: (error) {
        if (isClosed) return;

        // 🔥 أول شي: جرّب cache بنفس search
        _offersRepo
            .getCachedOffers(
          page: page,
          category: category,
          status: status,
          search: search,
        )
            .then((cachedOnFailure) async {
          if (isClosed) return;

          if (cachedOnFailure != null) {
            emit(OffersState.success(cachedOnFailure));
            return;
          }

          // ❌ ما في شي نهائياً
          emit(
            OffersState.failure(
              error: error.apiErrorModel.message ?? '',
            ),
          );
        });
      },
    );

    startAutoRefresh();

    _isLoading = false;
  }

  Future<void> refresh() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final cached = await _offersRepo.getCachedOffers(
      page: _page,
      category: _category,
      status: _status,
      search: _search,
    );

    if (cached != null) {
      final isSame = state.maybeWhen(
        success: (oldData) => oldData == cached,
        orElse: () => false,
      );

      if (!isSame) {
        emit(OffersState.success(cached));
      }
    }

    final response = await _offersRepo.getOffers(
      page: _page,
      category: _category,
      status: _status,
      search: _search,
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
          emit(OffersState.success(data));
        }
      },
      failure: (error) {
        if (cached == null && !isClosed) {
          emit(
            OffersState.failure(
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

    final response = await _offersRepo.getOffers(
      page: _page,
      category: _category,
      status: _status,
      search: _search,
      forceRefresh: true,
    );

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

        emit(OffersState.success(data));
      },
      failure: (_) {},
    );

    _isRefreshing = false;
  }

  Future<void> clearCache() async {
    await _offersRepo.clearOffers(
      page: _page,
      category: _category,
      status: _status,
      search: _search,
    );

    await load(
      page: _page,
      category: _category,
      status: _status,
      search: _search,
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
    _searchDebounce?.cancel();
    _periodicTimer?.cancel();
    return super.close();
  }

  void search(String value) {
    _searchDebounce?.cancel();

    _searchDebounce = Timer(
      const Duration(milliseconds: 600),
      () {
        load(
          page: 1,
          category: _category,
          status: _status,
          search: value,
        );
      },
    );
  }

  void filterByCategory(int category) {
    load(
      page: 1,
      category: category,
      status: _status,
      search: _search,
    );
  }
}
