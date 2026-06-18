import 'package:B2B/app/features/profile/data/models/profile_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_profile_response.freezed.dart';
part 'get_profile_response.g.dart';

@freezed
abstract class GetProfileResponse with _$GetProfileResponse {
  const factory GetProfileResponse({
    required ProfileModel data,
    required String message,
    dynamic errors,
  }) = _GetProfileResponse;

  factory GetProfileResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GetProfileResponseFromJson(json);
}
