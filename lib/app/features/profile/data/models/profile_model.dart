import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required int id,
    required String name,
    @JsonKey(name: 'owner_name') required String ownerName,
    required String phone,
    required String email,
    required String address,
    required String status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProfileModelFromJson(json);
}
