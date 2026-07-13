import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:product_list/core/domain/paging.dart';
import 'package:product_list/features/product_catalog/api/product_api.dart';
import 'package:product_list/features/product_catalog/domain/product.dart';
import 'package:product_list/features/product_catalog/domain/product_failure.dart';
import 'package:product_list/features/product_catalog/dtos/product_dto.dart';
import 'package:product_list/features/product_catalog/dtos/product_response_dto.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, ({List<Product> productList, PaginationData paging})>> getProductData({int skip = 0, int limit = 20});
  Future<Either<ProductFailure, Product>> getProductDetailById(String id);
}

class ProductRepository implements IProductRepository {
  final ProductApi api;
  const ProductRepository({
    required this.api,
  });
  
  @override
  Future<Either<ProductFailure, ({List<Product> productList, PaginationData paging})>> getProductData({int skip = 0, int limit = 20}) async{
    try{
      final result = await api.getProduct(
        skip: skip,
        limit: limit,
      );
      final ProductResponseDto response = ProductResponseDto.fromJson(result.data as Map<String, dynamic>);
      final List<Product> productList = response.productList.map((i) => ProductDto.fromJson(i as Map<String, dynamic>).toDomain()).toList();
      final PaginationData paging = response.paging;

      return right((
        productList : productList, paging: paging
      ));
    } on DioException catch (e) {

      return left(
        ProductFailure.acceptableError(message: e.message ?? "Unknown Error", errCode: e.response?.statusCode ?? 500,)
        );
    }
  }
  
  @override
  Future<Either<ProductFailure, Product>> getProductDetailById(String id) async{
    try{
      final result = await api.getProductById(id: id);
      final Product response =  ProductDto.fromJson(result.data as Map<String, dynamic>).toDomain();
      return right(response);
    } on DioException catch (e) {
      return left(
        ProductFailure.acceptableError(message: e.message ?? "Unknown Error", errCode: e.response?.statusCode ?? 500,)
        );
    }
  }
}