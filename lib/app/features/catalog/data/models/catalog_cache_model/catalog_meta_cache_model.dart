import 'package:json_annotation/json_annotation.dart';

part 'catalog_meta_cache_model.g.dart';

@JsonSerializable()
class CatalogMetaCacheModel {
  @JsonKey(name: 'current_page')
  final int currentPage;

  @JsonKey(name: 'last_page')
  final int lastPage;

  @JsonKey(name: 'per_page')
  final int perPage;

  final int total;

  CatalogMetaCacheModel({
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
  });

  factory CatalogMetaCacheModel.fromJson(Map<String, dynamic> json) =>
      _$CatalogMetaCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogMetaCacheModelToJson(this);
}
