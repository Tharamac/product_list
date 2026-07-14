part of 'product_bloc.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    required bool loadingProductList,
    required Either<ProductFailure, Unit> failOrFetchSuccess,
    required List<Product> productList,
    required PaginationData productListPaging,

    required Either<ProductFailure, Unit> failOrSearchSuccess,
    required List<Product> searchProductResult,
    required PaginationData productSearchPaging,
  }) = _ProductState;

  factory ProductState.initial() => ProductState(
    failOrFetchSuccess: right(unit),
    productList: [],
    loadingProductList: false,
    productListPaging: PaginationData.empty(),
    failOrSearchSuccess: right(unit),
    searchProductResult: [],
    productSearchPaging: PaginationData.empty(),
  );
}
