import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.loading() = _Loading;

  const factory ProfileState.success(
    GetProfileResponse response,
  ) = _Success;

  const factory ProfileState.failure({
    required String error,
  }) = _Failure;
}
