import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/offers/data/repos/add_offer_to_cataolg_repo/add_offer_repo.dart';
import 'package:B2B/app/features/offers/logic/add_offer_state.dart';
import 'package:bloc/bloc.dart';
import 'package:B2B/app/features/offers/data/models/add_offer_models/add_offer_request_body.dart';

class AddOfferCubit extends Cubit<AddOfferState> {
  final AddOfferRepo _repo;

  AddOfferCubit(this._repo)
      : super(
          const AddOfferState.initial(),
        );

  Future<void> addOffer({
    required int supplierProductId,
    required String sellPrice,
    bool isActive = true,
  }) async {
    emit(
      const AddOfferState.loading(),
    );

    final response = await _repo.addOffer(
      supplierProductId: supplierProductId,
      body: AddOfferRequestBody(
        sellPrice: sellPrice,
        isActive: isActive,
      ),
    );

    response.when(
      success: (data) {
        emit(
          AddOfferState.success(data),
        );
      },
      failure: (error) {
        emit(
          AddOfferState.failure(
            error: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }
}
