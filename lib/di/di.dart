import 'package:base_flutter/di/bloc.dart';
import 'package:base_flutter/di/data.dart';
import 'package:base_flutter/di/util.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

setupDI() async {
  await setupDataDI();
  setupBlocDI();
  setupUtilDI();
}
