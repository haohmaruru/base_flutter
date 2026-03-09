import 'package:base_flutter/data/repository/user_repository.dart';
import 'package:base_flutter/di/di.dart';
import 'package:base_flutter/ui/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  final _userRepository = di.get<UserRepository>();

  getUserLocal() async {
    final userLocal = await _userRepository.getUserLocalById("13132");
  }
}
