import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_offers_meta.freezed.dart';
part 'active_offers_meta.g.dart';

@freezed
abstract class ActiveOffersMeta with _$ActiveOffersMeta {
  const factory ActiveOffersMeta({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
  }) = _ActiveOffersMeta;

  factory ActiveOffersMeta.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ActiveOffersMetaFromJson(json);
}
