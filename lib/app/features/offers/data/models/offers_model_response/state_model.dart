import 'package:freezed_annotation/freezed_annotation.dart';
part 'state_model.g.dart';
part 'state_model.freezed.dart';

@freezed
abstract class Stats with _$Stats {
  const factory Stats({
    @JsonKey(name: 'total_offers') required int totalOffers,
    @JsonKey(name: 'available_offers') required int availableOffers,
  }) = _Stats;

  factory Stats.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StatsFromJson(json);
}
