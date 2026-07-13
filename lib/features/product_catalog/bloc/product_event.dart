part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetchProductData({@Default("") String keyword, @Default(30) int limit, @Default(1)int page}) = _FetchProductData;
  const factory ProductEvent.getProductDetailById(String id) = _GetProductDetailById;

}