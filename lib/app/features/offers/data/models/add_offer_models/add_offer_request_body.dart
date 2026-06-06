import 'package:json_annotation/json_annotation.dart';

part 'add_offer_request_body.g.dart';

@JsonSerializable()
class AddOfferRequestBody {
  @JsonKey(name: 'sell_price')
  final String sellPrice;

  @JsonKey(name: 'is_active')
  final bool isActive;

  AddOfferRequestBody({
    required this.sellPrice,
    required this.isActive,
  });

  Map<String, dynamic> toJson() => _$AddOfferRequestBodyToJson(this);
}
