import 'package:get/get.dart';

import '../../res/strings.dart';

abstract class BaseController<C> extends GetxController {
  /// [errorMessage] is error message get from exception
  String? errorMessage;

  /// Progress state of task is calling
  ProgressState progressState = ProgressState.initial;

  ViewState get initState => ViewState.loaded;

  /// State of View
  /// It will be handle by [BasePage]
  late Rx<ViewState> viewState;

  @override
  void onInit() {
    viewState = initState.obs;
    super.onInit();
  }

  /// Fire event update [newState] to View
  /// Will be send [newState] to view if  [forceUpdate] == false and [newState] difference [viewState.value]
  /// If [forceUpdate] == true, Will be send [newState] to view even thought [newState] same [viewState.value]
  setState(ViewState newState, {forceUpdate = false, dynamic error}) {
    if (viewState.value == newState && !forceUpdate) return;
    if (forceUpdate) {
      viewState.firstRebuild = true;
    }
    viewState.value = newState;
    if (viewState.value == ViewState.error && error != null) {
      errorMessage = getErrorMessage(error);
    }
    update();
  }

  /// Get error message from exception
  /// Please check any your Exception error in this
  /// Default will be return [unknownErrorMessage]
  String getErrorMessage(dynamic error) {
    if (error is String) {
      return error;
    }
    return Strings.unknownErrorMessage.trans;
  }

  /// Use for call api task and update process of it
  callApi({required Function doSomething}) async {
    try {
      progressState = ProgressState.processing;
      await doSomething();
      progressState = ProgressState.success;
    } catch (e, stackTrace) {
      errorMessage = getErrorMessage(e);
      progressState = ProgressState.error;
    }
  }
}

enum ViewState { initial, loading, loaded, error }

enum ProgressState { initial, processing, success, error }
