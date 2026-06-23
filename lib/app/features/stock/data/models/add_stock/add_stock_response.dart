import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_stock_response.g.dart';
part 'add_stock_response.freezed.dart';

@freezed
abstract class AddStockResponse with _$AddStockResponse {
  const factory AddStockResponse({
    required String message,
  }) = _AddStockResponse;

  factory AddStockResponse.fromJson(Map<String, dynamic> json) =>
      _$AddStockResponseFromJson(json);
}
