import 'package:freezed_annotation/freezed_annotation.dart';
import 'add_offer_data.dart';

part 'add_offer_response.freezed.dart';
part 'add_offer_response.g.dart';

@freezed
abstract class AddOfferResponse with _$AddOfferResponse {
  const factory AddOfferResponse({
    required AddOfferData data,
    required String message,
    dynamic errors,
  }) = _AddOfferResponse;

  factory AddOfferResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AddOfferResponseFromJson(json);
}
