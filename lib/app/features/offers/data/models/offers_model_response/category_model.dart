import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_model.g.dart';
part 'category_model.freezed.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    String? image,
    @JsonKey(name: 'image_url') String? imageUrl,
    required List<dynamic> media,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Category;

  factory Category.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CategoryFromJson(json);
}
