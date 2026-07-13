
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const factory ProductFailure.internetError() = _InternetError;
  const factory ProductFailure.unknownError() = _UnknownError;
  const factory ProductFailure.acceptableError({
    required int errCode,
 required String message}) =
      _AcceptableError;
}
