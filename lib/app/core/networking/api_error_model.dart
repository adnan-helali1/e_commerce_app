import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final Map<String, dynamic>? errors;

  ApiErrorModel({this.message, this.errors});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  /// ✅ إرجاع أول رسالة خطأ مفهومة للمستخدم
  String getErrorMessage() {
    if (errors != null && errors!.isNotEmpty) {
      final firstKey = errors!.keys.first;
      final firstError = errors![firstKey];

      if (firstError is List && firstError.isNotEmpty) {
        return firstError.first.toString();
      }
    }
    return message ?? "Unknown error";
  }

  /// 🔥 كل الأخطاء (إذا بدك تعرضهم List)
  List<String> getAllErrors() {
    if (errors == null) return [];

    List<String> allErrors = [];

    errors!.forEach((key, value) {
      if (value is List) {
        allErrors.addAll(value.map((e) => e.toString()));
      }
    });

    return allErrors;
  }
}
