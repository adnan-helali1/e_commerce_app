import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_state.freezed.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.initial() = _Initial;

  const factory CatalogState.loading() = _Loading;

  const factory CatalogState.success(
    CatalogResponse response,
  ) = _Success;

  const factory CatalogState.failure({
    required String error,
  }) = _Failure;
}
