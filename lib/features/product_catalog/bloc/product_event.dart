part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetchProductData() = _FetchProductData;
  const factory ProductEvent.fetchMoreProductData() = _FetchMoreProductData;
  const factory ProductEvent.getProductDetailById(String id) = _GetProductDetailById;
}