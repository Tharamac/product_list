import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
class DioHandler {
  final Dio dio;
  DioHandler._internal()
      : dio = Dio(BaseOptions(
          baseUrl: "https://example.com/api",
          connectTimeout: Duration(seconds: 5),
          receiveTimeout: Duration(seconds: 3),
        )) {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
    ));
  }

  static void setup() {
    getIt.registerLazySingleton<DioHandler>(() => DioHandler._internal());
  }

}