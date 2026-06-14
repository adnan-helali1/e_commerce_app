import 'package:json_annotation/json_annotation.dart';

part 'summery_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SummeryModel {
  @JsonKey(name: 'total_buy')
  final double total;
  @JsonKey(name: 'total_sell')
  final double totalSell;

  SummeryModel({
    required this.total,
    required this.totalSell,
  });

  factory SummeryModel.fromJson(Map<String, dynamic> json) =>
      _$SummeryModelFromJson(json);

  Map<String, dynamic> toJson() => _$SummeryModelToJson(this);
}
