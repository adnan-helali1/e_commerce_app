import 'package:B2B/app/features/orders/data/models/active_offer_item.dart';
import 'package:B2B/app/features/orders/data/models/active_offers_meta.dart';
import 'package:B2B/app/features/orders/data/models/active_offers_summary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../active_offers_response.freezed.dart';
part '../active_offers_response.g.dart';

@freezed
abstract class ActiveOffersResponse with _$ActiveOffersResponse {
  const factory ActiveOffersResponse({
    required List<ActiveOfferItem> data,
    required ActiveOffersSummary summary,
    required ActiveOffersMeta meta,
  }) = _ActiveOffersResponse;

  factory ActiveOffersResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ActiveOffersResponseFromJson(json);
}
