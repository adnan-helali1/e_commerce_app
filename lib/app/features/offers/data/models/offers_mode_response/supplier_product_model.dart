import 'package:B2B/app/features/offers/data/models/offers_mode_response/product_model.dart';
import 'package:B2B/app/features/offers/data/models/offers_mode_response/supplier_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'supplier_product_model.g.dart';
part 'supplier_product_model.freezed.dart';

@freezed
abstract class SupplierProduct with _$SupplierProduct {
  const factory SupplierProduct({
    required int id,
    @JsonKey(name: 'supplier_id') required int supplierId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'buy_price') required String buyPrice,
    @JsonKey(name: 'stock_quantity') required int stockQuantity,
    required String status,
    required Supplier supplier,
    required Product product,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _SupplierProduct;

  factory SupplierProduct.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SupplierProductFromJson(json);
}
