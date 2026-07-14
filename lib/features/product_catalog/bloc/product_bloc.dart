import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_list/core/domain/paging.dart';
import 'package:product_list/core/helper/debouncer.dart';
import 'package:product_list/features/product_catalog/domain/product.dart';
import 'package:product_list/features/product_catalog/domain/product_failure.dart'
    show ProductFailure;
import 'package:product_list/features/product_catalog/repository/product_repository.dart';

part 'product_state.dart';
part 'product_event.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository repository;

  final searchDebouncer = Debouncer(delay: Duration(milliseconds: 500));
  ProductBloc(this.repository) : super(ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.map(
        fetchProductData: (e) async {
          emit(
            state.copyWith(
              failOrFetchSuccess: right(unit),
              productListPaging: PaginationData.empty(),
              loadingProductList: true,
            ),
          );

          final failOrFetchSuccess = await repository.getProductData();

          emit(
            failOrFetchSuccess.fold(
              (failure) => state.copyWith(
                loadingProductList: false,
                failOrFetchSuccess: left(failure),
              ),
              (productsAndPaging) => state.copyWith(
                loadingProductList: false,
                failOrFetchSuccess: right(unit),
                productList: productsAndPaging.productList,
                productListPaging: productsAndPaging.paging,
              ),
            ),
          );
        },

        getProductDetailById: (e) {},
        fetchMoreProductData: (e) async {
          emit(
            state.copyWith(
              loadingProductList: true,
              productListPaging: state.productListPaging.copyWith(
                skip: state.productListPaging.nextSkip,
              ),
            ),
          );

          final failOrFetchSuccess = await repository.getProductData(
            skip: state.productListPaging.skip,
          );

          emit(
            failOrFetchSuccess.fold(
              (failure) => state.copyWith(
                loadingProductList: false,
                failOrFetchSuccess: left(failure),
              ),
              (productsAndPaging) => state.copyWith(
                loadingProductList: false,
                failOrFetchSuccess: right(unit),
                productList: [
                  ...state.productList,
                  ...productsAndPaging.productList,
                ],
                productListPaging: productsAndPaging.paging,
              ),
            ),
          );
        },
        onSearchMoreProduct: (e) async {
          emit(
            state.copyWith(
              loadingProductList: true,
              productSearchPaging: state.productSearchPaging.copyWith(
                skip: state.productSearchPaging.nextSkip,
              ),
            ),
          );

          final failOrFetchSuccess = await repository.searchProduct(
            keyword: e.keyword,
            skip: state.productSearchPaging.skip,
          );

          emit(
            failOrFetchSuccess.fold(
              (failure) => state.copyWith(
                loadingProductList: false,
                failOrSearchSuccess: left(failure),
              ),
              (productsAndPaging) => state.copyWith(
                loadingProductList: false,
                failOrSearchSuccess: right(unit),
                searchProductResult: [
                  ...state.productList,
                  ...productsAndPaging.productList,
                ],
                productSearchPaging: productsAndPaging.paging,
              ),
            ),
          );
        },
        onSearchProduct: (e) async {
          emit(
            state.copyWith(
              failOrSearchSuccess: right(unit),
              productSearchPaging: PaginationData.empty(),
              loadingProductList: true,
            ),
          );

          final failOrFetchSuccess = await repository.searchProduct(
            keyword: e.keyword,
          );

          emit(
            failOrFetchSuccess.fold(
              (failure) => state.copyWith(
                loadingProductList: false,
                failOrSearchSuccess: left(failure),
              ),
              (productsAndPaging) => state.copyWith(
                loadingProductList: false,
                failOrSearchSuccess: right(unit),
                searchProductResult: [
                  ...state.productList,
                  ...productsAndPaging.productList,
                ],
                productSearchPaging: productsAndPaging.paging,
              ),
            ),
          );
        },
        onTypeSearchProduct: (e) {
          searchDebouncer.cancel();
          searchDebouncer.call(() {
            this.add(ProductEvent.onSearchProduct(e.keyword));
          });
        },
      );
    });
  }
}
