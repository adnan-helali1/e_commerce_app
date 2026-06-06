import 'package:B2B/app/features/offers/data/models/offers_model_response/category_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.g.dart';
part 'product_model.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required int id,
    @JsonKey(name: 'supplier_id') required int supplierId,
    @JsonKey(name: 'category_id') required int categoryId,
    required String name,
    String? description,
    @JsonKey(name: 'buy_price') required String buyPrice,
    @JsonKey(name: 'stock_quantity') required int stockQuantity,
    required String status,
    required Category category,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Product;

  factory Product.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductFromJson(json);
}
