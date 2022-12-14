import 'package:get/get.dart';

import '../../res/strings.dart';

abstract class BaseController<C> extends GetxController {
  String? errorMessage;

  ProgressState progressState = ProgressState.initial;

  ViewState get initState => ViewState.loaded;

  late Rx<ViewState> viewState;

  @override
  void onInit() {
    viewState = initState.obs;
    super.onInit();
  }

  setState(ViewState newState, {forceUpdate = false, dynamic error}) {
    if (viewState == newState && !forceUpdate) return;

    viewState.value = newState;
    if (viewState == ViewState.error && error != null) {
      errorMessage = getErrorMessage(error);
    }
    update();
  }

  String getErrorMessage(dynamic error) {
    if (error is String) {
      return error;
    }
    return Strings.unknownErrorMessage.trans;
  }

  callApi({required Function doSomething}) async {
    try {
      progressState = ProgressState.processing;
      await doSomething();
      progressState = ProgressState.success;
    } catch (e, stackTrace) {
      errorMessage = getErrorMessage(e);
      progressState = ProgressState.error;
      print(e);
    }
  }
}

enum ViewState { initial, loading, loaded, error }

enum ProgressState { initial, processing, success, error }
