part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    required bool loadingProductList,
    required Option<Either<ProductFailure, Unit>> failOrFetchSuccess, 
    required List<Product> productList,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
    failOrFetchSuccess: none(), 
    productList: [], 
    loadingProductList: false,
  
    );
}