import 'package:amit_task/core/api/api_consumer.dart';
import 'package:amit_task/core/api/app_interceptors.dart';
import 'package:amit_task/core/api/dio_consumer.dart';
import 'package:amit_task/features/users/data/datasources/users_data_source.dart';
import 'package:amit_task/features/users/presentation/cubit/style_cubit/style_cubit.dart';
import 'package:amit_task/features/users/presentation/cubit/user_cubit/user_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
final sl = GetIt.instance;
Future<void> init() async {
  sl.registerFactory(() =>UserCubit(sl()));
  sl.registerFactory(() =>StyleCubit());

  sl.registerLazySingleton<UsersRemoteDataSource>(
      () => UsersRemoteDataSourceImpl(apiConsumer: sl()));
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(client: sl()));
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => AppInterceptors());
  sl.registerLazySingleton(() => LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        error: true,
      ));
}