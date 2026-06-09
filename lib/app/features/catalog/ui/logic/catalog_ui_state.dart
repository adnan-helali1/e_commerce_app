import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_ui_state.freezed.dart';

@freezed
abstract class CatalogUiState with _$CatalogUiState {
  const factory CatalogUiState({
    CatalogResponse? response,
    @Default(false) bool isLoading,
    String? error,
    @Default(false) bool activeOnly,
  }) = _CatalogUiState;
}
