part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetchProductData() = _FetchProductData;
  const factory ProductEvent.fetchMoreProductData() = _FetchMoreProductData;

  const factory ProductEvent.getProductDetailById(String id) = _GetProductDetailById;
  const factory ProductEvent.onSearchMoreProduct(String keyword, ) =
      _OnSearchMoreProduct;
  const factory ProductEvent.onSearchProduct(String keyword, ) =
      _OnSearchProduct;

  const factory ProductEvent.onTypeSearchProduct(
    String keyword,
    bool isFirstPage,
  ) = _OnTypeSearchProduct;
}