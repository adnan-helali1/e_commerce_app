import 'package:freezed_annotation/freezed_annotation.dart';
part 'supplier_model.g.dart';
part 'supplier_model.freezed.dart';

@freezed
abstract class Supplier with _$Supplier {
  const factory Supplier({
    required int id,
    required String name,
    String? phone,
    String? email,
    String? address,
    required String status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Supplier;

  factory Supplier.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SupplierFromJson(json);
}
