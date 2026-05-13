import 'package:B2B/app/core/networking/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler errorHandler) = Failure<T>;
}


/*result.when(
  success: (data) {
    // success logic
  },
  failure: (error) {
    final message = error.apiErrorModel.getErrorMessage();

    print(message); // 🔥 رح يعطيك error حقيقي
  },
);*/