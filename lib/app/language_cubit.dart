import 'package:base_flutter/data/model/enum/language.dart';
import 'package:base_flutter/data/repository/common_repository.dart';
import 'package:base_flutter/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<Language> {
  final _commonRepository = di.get<CommonRepository>();

  LanguageCubit() : super(Language.vietnamese);

  getLanguage() async {
    final language = await _commonRepository.getLanguage();
    setLanguage(language);
  }

  setLanguage(Language language) {
    _commonRepository.setLanguage(language);
    emit(language);
  }
}
