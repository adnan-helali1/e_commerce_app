import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:B2B/app/core/images/selected_image.dart';
import 'package:dio/dio.dart';

part 'update_profile_request.freezed.dart';
part 'update_profile_request.g.dart';

@freezed
abstract class UpdateProfileRequest with _$UpdateProfileRequest {
  const UpdateProfileRequest._();

  const factory UpdateProfileRequest({
    String? name,
    @JsonKey(name: 'owner_name') String? ownerName,
    String? phone,
    String? address,
    @JsonKey(includeFromJson: false, includeToJson: false) SelectedImage? image,
  }) = _UpdateProfileRequest;

  Future<FormData> toFormData() async {
    final data = <String, dynamic>{'_method': 'PUT'};
    if (name != null) data['name'] = name;
    if (ownerName != null) data['owner_name'] = ownerName;
    if (phone != null) data['phone'] = phone;
    if (address != null) data['address'] = address;
    if (image != null) data['image'] = await image!.toMultipartFile();
    return FormData.fromMap(data);
  }

  factory UpdateProfileRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UpdateProfileRequestFromJson(json);
}
