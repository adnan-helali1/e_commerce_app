import 'package:B2B/app/features/catalog/data/catalog_models/catalog_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_response.freezed.dart';
part 'catalog_response.g.dart';

@freezed
@freezed
abstract class CatalogResponse with _$CatalogResponse {
  const factory CatalogResponse({
    required CatalogData data,
    required String message,
    dynamic errors,
  }) = _CatalogResponse;

  factory CatalogResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogResponseFromJson(json);
}
