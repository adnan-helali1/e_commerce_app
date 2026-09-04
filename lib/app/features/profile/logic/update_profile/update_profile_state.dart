import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_state.freezed.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = _Initial;

  const factory UpdateProfileState.loading({@Default(0) double progress}) =
      _Loading;

  const factory UpdateProfileState.success(
    GetProfileResponse response,
  ) = _Success;

  const factory UpdateProfileState.failure({
    required String error,
    String? imageError,
  }) = _Failure;
}
