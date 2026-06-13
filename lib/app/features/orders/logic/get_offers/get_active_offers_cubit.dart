import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/orders/data/get_active_offers_repo.dart';
import 'package:B2B/app/features/orders/logic/get_offers/get_active_offers_state.dart';
import 'package:bloc/bloc.dart';

class GetActiveOffersCubit extends Cubit<GetActiveOffersState> {
  final GetActiveOffersRepo _repo;

  GetActiveOffersCubit(this._repo)
      : super(
          const GetActiveOffersState.initial(),
        );

  Future<void> getActiveOffers() async {
    emit(
      const GetActiveOffersState.loading(),
    );

    final response = await _repo.getActiveOffers();

    response.when(
      success: (data) {
        emit(
          GetActiveOffersState.success(activeOffersResponse: data),
        );
      },
      failure: (error) {
        emit(
          GetActiveOffersState.failure(
            error: error.apiErrorModel.message ?? 'Something went wrong',
          ),
        );
      },
    );
  }
}
