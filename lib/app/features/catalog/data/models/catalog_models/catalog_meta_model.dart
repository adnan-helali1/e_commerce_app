import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_meta_model.freezed.dart';
part 'catalog_meta_model.g.dart';

@freezed
abstract class CatalogMeta with _$CatalogMeta {
  const factory CatalogMeta({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
  }) = _CatalogMeta;

  factory CatalogMeta.fromJson(Map<String, dynamic> json) =>
      _$CatalogMetaFromJson(json);
}
