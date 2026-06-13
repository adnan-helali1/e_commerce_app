import 'package:B2B/app/features/orders/data/models/get_active_offers/active_offers_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_active_offers_state.freezed.dart';

@freezed
class GetActiveOffersState with _$GetActiveOffersState {
  const factory GetActiveOffersState.initial() = _Initial;

  const factory GetActiveOffersState.loading() = _Loading;

  const factory GetActiveOffersState.success(
      {required ActiveOffersResponse activeOffersResponse}) = _Success;

  const factory GetActiveOffersState.failure({
    required String error,
  }) = _Failure;
}
