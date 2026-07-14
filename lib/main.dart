import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list/core/handler/dio_handler.dart';
import 'package:product_list/core/handler/injectable.dart' hide getIt;
import 'package:product_list/features/product_catalog/bloc/product_bloc.dart';
import 'package:product_list/features/product_catalog/pages/product_catalog_page.dart';
import 'package:product_list/features/product_catalog/repository/product_repository.dart';

void main() {

  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => ProductBloc(getIt<ProductRepository>()),
    child: 
    MaterialApp(
      title: 'Product Catalog',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.cyan),
      ),
      home: 
      const ProductCatalogPage() 
      ,)
      
    );
  }
}
