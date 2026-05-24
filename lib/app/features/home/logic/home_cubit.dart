import 'dart:async';
import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/home/data/repos/home_repo.dart';
import 'package:B2B/app/features/home/logic/home_state.dart';
import 'package:bloc/bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  bool _isLoading = false;
  bool _isRefreshing = false;

  Timer? _periodicTimer;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  /// 🚀 أول تحميل
  Future<void> load() async {
    if (_isLoading) return;
    _isLoading = true;

    final cached = await _homeRepo.getCachedHomeDashboard();

    /// ✅ عرض الكاش فوراً
    if (cached != null) {
      emit(HomeState.success(cached));

      /// 🔥 دايماً اعمل background refresh
      unawaited(_refreshSilently());

      /// 🔁 تشغيل التحديث الدوري
      startAutoRefresh();

      _isLoading = false;
      return;
    }

    /// ❗ ما في كاش
    emit(const HomeState.loading());

    final response = await _homeRepo.getHomeDashboard(forceRefresh: true);

    response.when(
      success: (data) {
        if (!isClosed) {
          emit(HomeState.success(data));
        }
      },
      failure: (error) {
        if (!isClosed) {
          emit(HomeState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        }
      },
    );

    /// 🔁 تشغيل التحديث الدوري
    startAutoRefresh();

    _isLoading = false;
  }

  /// 🔄 Pull to refresh
  Future<void> refresh() async {
    if (_isRefreshing) return;
    _isRefreshing = true;

    final cached = await _homeRepo.getCachedHomeDashboard();

    /// لا تكسر UI
    if (cached != null) {
      emit(HomeState.success(cached));
    }

    final response = await _homeRepo.getHomeDashboard(forceRefresh: true);

    response.when(
      success: (data) {
        if (isClosed) return;

        if (cached != data) {
          emit(HomeState.success(data));
        }
      },
      failure: (error) {
        if (cached == null && !isClosed) {
          emit(HomeState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        }
      },
    );

    _isRefreshing = false;
  }

  /// 🔥 Background refresh
  Future<void> _refreshSilently() async {
    if (_isRefreshing) return;
    _isRefreshing = true;

    final response = await _homeRepo.getHomeDashboard(forceRefresh: true);

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

        emit(HomeState.success(data));
      },
      failure: (_) {},
    );

    _isRefreshing = false;
  }

  /// 🧹 مسح الكاش
  Future<void> clearCache() async {
    await _homeRepo.clearHomeDashboard();
    await load();
  }

  /// 🔁 كل 5 دقايق
  void startAutoRefresh() {
    _periodicTimer?.cancel();

    _periodicTimer = Timer.periodic(
      const Duration(minutes: 5),
      (_) {
        _refreshSilently();
      },
    );
  }

  @override
  Future<void> close() {
    _periodicTimer?.cancel();
    return super.close();
  }
}
