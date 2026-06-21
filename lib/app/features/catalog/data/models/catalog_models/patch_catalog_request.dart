import 'package:freezed_annotation/freezed_annotation.dart';
part 'patch_catalog_request.freezed.dart';
part 'patch_catalog_request.g.dart';

@freezed
abstract class PatchCatalogRequest with _$PatchCatalogRequest {
  const factory PatchCatalogRequest({
    @JsonKey(name: 'sell_price') required String sellPrice,
    @JsonKey(name: 'is_active') required bool isActive,
  }) = _PatchCatalogRequest;

  factory PatchCatalogRequest.fromJson(Map<String, dynamic> json) =>
      _$PatchCatalogRequestFromJson(json);
}
