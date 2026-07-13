import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_list/features/product_catalog/domain/product.dart';
import 'package:product_list/features/product_catalog/domain/product_failure.dart' show ProductFailure;
import 'package:product_list/repository/product_repository.dart';

part 'product_state.dart';
part 'product_event.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState>{
  final ProductRepository repository;
  ProductBloc(
    this.repository,
  ) : super(ProductState.initial()){
    on<ProductEvent>((event, emit) async { 
      event.map(fetchProductData: (e){
        
      }, getProductDetailById: (e){

      });
    },);
  }
}