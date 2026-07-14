import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';


part "product_api.g.dart";

@RestApi(baseUrl: 'https://dummyjson.com/')
abstract class ProductApi { 
//       '/products'	
// -	GET	'/products/{id}'	
// 	GET	/products/search?q=	-	
//   GET	'/products/categories'	
//   GET	'/products/category/{category}'
//   '/products?limit=20&skip=20'	

  factory ProductApi(Dio dio,) = _ProductApi;

  @GET('/products')
  Future<HttpResponse<dynamic>> getProduct({
    @Query("skip") int? skip,
    @Query("limit") int? limit = 20,
  });

  @GET('/products/{id}')
  Future<HttpResponse<dynamic>> getProductById({
    @Path("id")required String id,
    @Query("auth") bool isAuth = false,
    @Query("skip") int? skip,
    @Query("limit") int limit = 10,
  });

  @GET('/products/search')
  Future<HttpResponse<dynamic>> searchProductKeyword({
    @Query("q") required String keyword,
    @Query("skip") int? skip,
    @Query("limit") int limit = 10,
  });


}
