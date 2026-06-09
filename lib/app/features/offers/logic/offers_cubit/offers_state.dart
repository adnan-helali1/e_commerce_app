import 'package:B2B/app/features/offers/data/models/offers_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_state.freezed.dart';

@freezed
class OffersState with _$OffersState {
  const factory OffersState.initial() = _Initial;

  const factory OffersState.loading() = _Loading;

  const factory OffersState.success(
    OffersResponse response,
  ) = _Success;

  const factory OffersState.failure({
    required String error,
  }) = _Failure;
}
