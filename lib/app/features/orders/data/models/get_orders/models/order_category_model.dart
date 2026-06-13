import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_category_model.g.dart';

@JsonSerializable()
class OrderCategoryModel {
  final int id;
  final String name;
  final String? image;

  @JsonKey(name: 'image_url')
  final String? imageUrl;

  final List<dynamic> media;

  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  OrderCategoryModel({
    required this.id,
    required this.name,
    this.image,
    this.imageUrl,
    required this.media,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$OrderCategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderCategoryModelToJson(this);
}
