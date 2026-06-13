import 'package:freezed_annotation/freezed_annotation.dart';

part '../active_offers_summary.freezed.dart';
part '../active_offers_summary.g.dart';

@freezed
abstract class ActiveOffersSummary with _$ActiveOffersSummary {
  const factory ActiveOffersSummary({
    @JsonKey(name: 'total_products') required int totalProducts,
    @JsonKey(name: 'active_products') required int activeProducts,
    @JsonKey(name: 'total_profit') required double totalProfit,
  }) = _ActiveOffersSummary;

  factory ActiveOffersSummary.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ActiveOffersSummaryFromJson(json);
}
