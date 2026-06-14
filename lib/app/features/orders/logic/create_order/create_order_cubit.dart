import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/orders/data/models/create_order/create_order_request.dart';
import 'package:B2B/app/features/orders/data/repos/create_order_repo.dart';
import 'package:B2B/app/features/orders/logic/create_order/create_order_state.dart';
import 'package:bloc/bloc.dart';

class CreateOrderCubit extends Cubit<CreateOrderState> {
  final CreateOrderRepo _repo;

  CreateOrderCubit(
    this._repo,
  ) : super(const CreateOrderState.initial());

  Future<void> createOrder({
    required List<OrderItemRequest> items,
  }) async {
    emit(const CreateOrderState.loading());

    final response = await _repo.createOrder(
      CreateOrderRequest(
        items: items,
      ),
    );

    response.when(
      success: (data) {
        emit(
          CreateOrderState.success(data),
        );
      },
      failure: (error) {
        emit(
          CreateOrderState.failure(
            error: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }
}
