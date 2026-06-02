import 'package:freezed_annotation/freezed_annotation.dart';
part 'pagination_model.g.dart';
part 'pagination_model.freezed.dart';

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'current_page') required int currentPage,
    required int total,
    @JsonKey(name: 'last_page') required int lastPage,
  }) = _Pagination;

  factory Pagination.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PaginationFromJson(json);
}
