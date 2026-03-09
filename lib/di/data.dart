import 'package:base_flutter/data/local/database/dao/user_dao.dart';
import 'package:base_flutter/data/local/database/dao/user_dao_impl.dart';
import 'package:base_flutter/data/local/local_storage/local_storage.dart';
import 'package:base_flutter/data/local/local_storage/secure_storage.dart';
import 'package:base_flutter/data/remote/remote_data_source/user_remote_data_source.dart';
import 'package:base_flutter/data/remote/rest_client.dart';
import 'package:base_flutter/data/repository/common_repository.dart';
import 'package:base_flutter/data/repository/user_repository.dart';
import 'package:base_flutter/di/di.dart';

import '../data/local/database/database.dart';

setupDataDI() async {
  // local storage
  di.registerSingleton<LocalStorage>(await SecureStorage().init());

  // databse
  di.registerLazySingleton<AppDatabase>(() => AppDatabase());
  di.registerFactory<UserDao>(() => UserDaoImpl(di.get<AppDatabase>()));

  // rest client
  di.registerSingleton<RestClient>(RestClient());

  // remote data source
  di.registerLazySingleton<UserRemoteDataSource>(() => UserRemoteDataSource());

  // repository
  di.registerLazySingleton<UserRepository>(() => UserRepositoryImpl());
  di.registerSingleton<CommonRepository>(CommonRepositoryImpl());
}
