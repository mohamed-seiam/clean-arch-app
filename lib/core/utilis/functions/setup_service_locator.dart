import 'package:clean_arch_app/core/utilis/api_services.dart';
import 'package:clean_arch_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:clean_arch_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:clean_arch_app/features/home/data/repos/home_rep_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      homeRemoteDataSource: HomeRemoteDataSourceImplementation(
        apiServices: getIt.get<ApiServices>(),
      ),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );
}
