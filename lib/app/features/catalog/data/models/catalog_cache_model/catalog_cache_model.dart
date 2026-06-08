import 'package:B2B/app/features/catalog/data/models/catalog_cache_model/catalog_data_cache_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'catalog_cache_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CatalogCacheModel {
  final CatalogDataCacheModel? data;
  final String? message;
  final dynamic errors;
  final DateTime cachedAt;

  CatalogCacheModel({
    this.data,
    this.message,
    this.errors,
    required this.cachedAt,
  });

  factory CatalogCacheModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CatalogCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogCacheModelToJson(this);

  factory CatalogCacheModel.fromResponse(
    CatalogResponse response, {
    DateTime? cachedAt,
  }) {
    return CatalogCacheModel(
      data: CatalogDataCacheModel.fromResponse(response.data),
      message: response.message,
      errors: response.errors,
      cachedAt: cachedAt ?? DateTime.now(),
    );
  }

  CatalogResponse toResponse() {
    return CatalogResponse(
      data: data!.toResponse(),
      message: message ?? '',
      errors: errors,
    );
  }
}
