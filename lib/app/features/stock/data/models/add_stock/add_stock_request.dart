import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_stock_request.g.dart';
part 'add_stock_request.freezed.dart';

@freezed
abstract class AddStockRequest with _$AddStockRequest {
  const factory AddStockRequest({
    @JsonKey(name: 'store_product_id') required int storeProductId,
    required int quantity,
    @JsonKey(name: 'unit_price') required double unitPrice,
    @JsonKey(name: 'seller_name') required String sellerName,
  }) = _AddStockRequest;

  factory AddStockRequest.fromJson(Map<String, dynamic> json) =>
      _$AddStockRequestFromJson(json);
}
