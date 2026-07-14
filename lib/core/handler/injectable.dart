import 'package:get_it/get_it.dart';
import 'package:product_list/core/handler/dio_handler.dart';
import 'package:product_list/features/product_catalog/api/product_api.dart';
import 'package:product_list/features/product_catalog/repository/product_repository.dart';

final getIt = GetIt.instance;
void configureDependencies() {
  DioHandler.setup();
  getIt.registerSingleton<ProductApi>(ProductApi(getIt<DioHandler>().dio));
  getIt.registerLazySingleton<ProductRepository>(
    () => ProductRepository(api: getIt<ProductApi>())
  );
}