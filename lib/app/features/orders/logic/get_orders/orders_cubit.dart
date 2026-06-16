import 'dart:async';
import 'package:B2B/app/features/orders/data/repos/get_orders/get_orders_repo.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_state.dart';
import 'package:bloc/bloc.dart';
import 'package:B2B/app/core/networking/api_result.dart';

class OrdersCubit extends Cubit<OrdersState> {
  final OrdersRepo _ordersRepo;

  bool _isLoading = false;
  bool _isRefreshing = false;

  Timer? _periodicTimer;

  String _status = '';
  int _perPage = 10;

  OrdersCubit(this._ordersRepo) : super(const OrdersState.initial()) {
    load();
  }

  Future<void> load({
    String status = '',
    int perPage = 10,
  }) async {
    if (_isLoading) return;

    _isLoading = true;
    _status = status;
    _perPage = perPage;

    final cached = await _ordersRepo.getCachedOrders(
      status: status,
      perPage: perPage,
    );

    // ✅ عرض الكاش مباشرة
    if (cached != null) {
      emit(OrdersState.success(cached));

      final cachedAt = await _ordersRepo.getCachedOrdersAt(
        status: status,
        perPage: perPage,
      );

      if (_ordersRepo.shouldRefreshOrders(cachedAt)) {
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
      emit(const OrdersState.loading());
    }

    final response = await _ordersRepo.getOrders(
      status: status,
      perPage: perPage,
      forceRefresh: true,
    );

    response.when(
      success: (data) {
        if (isClosed) return;
        emit(OrdersState.success(data));
      },
      failure: (error) {
        if (isClosed) return;

        // 🔥 fallback للكاش عند الفشل
        _ordersRepo
            .getCachedOrders(
          status: status,
          perPage: perPage,
        )
            .then((cachedOnFailure) {
          if (isClosed) return;

          if (cachedOnFailure != null) {
            emit(OrdersState.success(cachedOnFailure));
            return;
          }

          emit(OrdersState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        });
      },
    );

    _isLoading = false;
  }

  Future<void> refresh() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final cached = await _ordersRepo.getCachedOrders(
      status: _status,
      perPage: _perPage,
    );

    if (cached != null) {
      final isSame = state.maybeWhen(
        success: (oldData) => oldData != cached,
        orElse: () => false,
      );
      if (!isSame) {
        emit(OrdersState.success(cached));
      }
    }

    final response = await _ordersRepo.getOrders(
      status: _status,
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
          emit(OrdersState.success(data));
        }
      },
      failure: (error) {
        if (cached == null && !isClosed) {
          emit(OrdersState.failure(
            error: error.apiErrorModel.message ?? '',
          ));
        }
      },
    );

    _isRefreshing = false;
  }

  Future<void> _refreshSilently() async {
    if (_isRefreshing) return;

    _isRefreshing = true;

    final response = await _ordersRepo.getOrders(
      status: _status,
      perPage: _perPage,
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

        emit(OrdersState.success(data));
      },
      failure: (_) {},
    );

    _isRefreshing = false;
  }

  Future<void> clearCache() async {
    await _ordersRepo.clearOrders(
      status: _status,
      perPage: _perPage,
    );
    await load(
      status: _status,
      perPage: _perPage,
    );
  }

  void filterByStatus(String status) {
    load(
      status: status,
      perPage: _perPage,
    );
  }

  @override
  Future<void> close() {
    _periodicTimer?.cancel();
    return super.close();
  }

  Future<void> delete({
    required int orderId,
  }) async {
    emit(const OrdersState.loading());

    final response = await _ordersRepo.deleteOrder(
      orderId: orderId,
    );

    response.when(
      success: (_) {
        // إعادة تحميل البيانات بعد الحذف
        load(
          status: _status,
          perPage: _perPage,
        );
      },
      failure: (error) {
        emit(
          OrdersState.failure(
            error: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }
}
