import 'package:B2B/app/core/networking/api_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:B2B/app/features/stock/data/models/add_stock/add_stock_request.dart';
import 'package:B2B/app/features/stock/data/repos/add_stock_repo.dart';
import 'add_stock_state.dart';

class AddStockCubit extends Cubit<AddStockState> {
  final AddStockRepo _repo;

  AddStockCubit(this._repo) : super(const AddStockState.initial());

  Future<void> addStock(AddStockRequest request) async {
    emit(const AddStockState.loading());

    final response = await _repo.addStock(request);

    response.when(
      success: (data) {
        emit(AddStockState.success(data));
      },
      failure: (error) {
        emit(
          AddStockState.failure(
            error: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }
}
