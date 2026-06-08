import 'package:freezed_annotation/freezed_annotation.dart';
part 'catalog_summary_model.freezed.dart';
part 'catalog_summary_model.g.dart';

@freezed
abstract class CatalogSummary with _$CatalogSummary {
  const factory CatalogSummary({
    @JsonKey(name: 'total_products') required int totalProducts,
    @JsonKey(name: 'active_products') required int activeProducts,
    @JsonKey(name: 'total_profit') required double totalProfit,
  }) = _CatalogSummary;

  factory CatalogSummary.fromJson(Map<String, dynamic> json) =>
      _$CatalogSummaryFromJson(json);
}
