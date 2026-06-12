import 'package:freezed_annotation/freezed_annotation.dart';
part 'catalog_action_state.freezed.dart';

@freezed
class CatalogActionState with _$CatalogActionState {
  const factory CatalogActionState.initial() = _Initial;

  const factory CatalogActionState.loading() = _Loading;

  const factory CatalogActionState.success() = _Success;

  const factory CatalogActionState.failure({
    required String error,
  }) = _Failure;
}
