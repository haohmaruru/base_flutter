import 'package:base/res/strings.dart';
import 'package:base/res/theme/theme_manager.dart';
import 'package:base/widget/dialog_widget.dart';
import 'package:base/widget/error_widget.dart';
import 'package:base/widget/loading_dialog.dart';
import 'package:base/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'base_controller.dart';

//ignore: must_be_immutable
abstract class BasePage<C extends BaseController> extends GetWidget<C> {
  Color get backgroundLoadingColor => themes.colorWhite;

  Widget? _loadingDialog;

  @override
  Widget build(BuildContext context) {
    return buildMainContent(context);
  }

  Widget buildMainContent(BuildContext context) {
    return Obx(() => buildViewByState(context));
  }

  /// Show loading widget when view in state [ViewState.loading]
  /// Please custom for your loading view for state [ViewState.loading]
  Widget buildLoading() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: themes.colorWhite,
      child: Center(child: LoadingWidget()),
    );
  }

  /// Handle state of [ViewState] from [controller]
  /// And update view with state
  Widget buildViewByState(BuildContext context) {
    switch (controller.viewState.value) {
      case ViewState.error:
        return ErrorViewWidget(
          message: controller.errorMessage!.trans,
          onRetry: onRetry,
        );
      case ViewState.loaded:
        return buildContentView(context);
      case ViewState.loading:
        return loadingView;
      default:
        return Container();
    }
  }

  /// Function for show dialog loading
  /// Use for case you want to show loading while do something
  showLoading({BuildContext? dialogContext}) {
    if (_loadingDialog == null) {
      _loadingDialog = LoadingDialog();
      showDialog(
          barrierDismissible: false,
          context: dialogContext ?? Get.context!,
          builder: (_) =>
              _loadingDialog ??
              Container(
                color: Colors.transparent,
              ));
    }
  }

  /// Function for hide dialog loading after it showed
  hideLoading() {
    if (_loadingDialog != null) {
      Navigator.pop(Get.context!);
      _loadingDialog = null;
    }
  }

  /// Show dialog error with [errorMessage] and optional [title]
  /// Please override or custom it for your UI
  showError(String? errorMessage, {String? title}) {
    if (errorMessage?.isNotEmpty == true) {
      showDialog(
          context: Get.context!,
          builder: (_) => OneButtonDialogWidget(
                title: title,
                description: errorMessage?.trans,
                textConfirm: Strings.close.trans,
              ));
    }
  }

  /// this function must be override for build content of ui
  /// when view in state [ViewState.loaded]
  Widget buildContentView(BuildContext context);

  Widget get loadingView => buildLoading();

  /// override it for do something when click button retry
  /// when view in state [ViewState.error]
  void onRetry() {}

  /// This function to tracking task like request the api and handle result
  /// If success then [onSuccess] will be call
  /// Else if [onFail] not null then call [onFail]
  /// Else will be handle error and show it
  taskProcessing(
      {required Function execute,
      Function? onSuccess,
      Function? onFail}) async {
    showLoading();
    try {
      await execute();
    } catch (e, stackTrace) {}

    hideLoading();
    if (controller.progressState == ProgressState.success &&
        onSuccess != null) {
      onSuccess();
    } else if (controller.progressState == ProgressState.error) {
      if (onFail != null) {
        onFail();
      } else {
        showError(controller.errorMessage?.trans);
      }
    }
  }
}
