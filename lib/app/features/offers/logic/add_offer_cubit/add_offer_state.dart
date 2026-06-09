import 'package:B2B/app/features/offers/data/models/add_offer_models/add_offer_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_offer_state.freezed.dart';

@freezed
class AddOfferState with _$AddOfferState {
  const factory AddOfferState.initial() = _Initial;

  const factory AddOfferState.loading() = _Loading;

  const factory AddOfferState.success(
    AddOfferResponse response,
  ) = _Success;

  const factory AddOfferState.failure({
    required String error,
  }) = _Failure;
}
