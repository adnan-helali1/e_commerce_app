import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success(HomeDashboardResponse response) = _Success;
  const factory HomeState.failure({required String error}) = _Failure;
}
