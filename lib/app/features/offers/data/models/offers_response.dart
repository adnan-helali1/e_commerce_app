import 'package:B2B/app/features/offers/data/models/offers_mode_response/offer_data_model.dart';
import 'package:B2B/app/features/offers/data/models/offers_mode_response/pagination_model.dart';
import 'package:B2B/app/features/offers/data/models/offers_mode_response/state_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_response.freezed.dart';
part 'offers_response.g.dart';

@freezed
abstract class OffersResponse with _$OffersResponse {
  const factory OffersResponse({
    required List<OfferData> data,
    required Stats stats,
    required Pagination pagination,
    required String message,
    dynamic errors,
  }) = _OffersResponse;

  factory OffersResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OffersResponseFromJson(json);
}
