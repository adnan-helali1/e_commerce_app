import 'package:B2B/app/features/auth/data/models/register_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial({@Default(false) bool isFormValid}) =
      _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.success(RegisterResponse response) = _Success;
  const factory RegisterState.failure({required String error}) = _Failure;
}
