import 'package:base/res/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/strings.dart';
import '../../widget/dialog_widget.dart';
import '../../widget/error_widget.dart';
import '../../widget/loading_dialog.dart';
import '../../widget/loading_widget.dart';
import 'base_controller.dart';

abstract class BasePage<C extends BaseController> extends GetWidget<C> {
  Widget? _loadingDialog;

  @override
  Widget build(BuildContext context) {
    return buildMainContent(context);
  }

  Widget buildMainContent(BuildContext context) {
    return Obx(() => buildViewByState(context));
  }

  Widget buildDefaultLoading() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: backgroundLoadingColor,
      child: Center(child: LoadingWidget()),
    );
  }

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
        return buildLoadingView;
      default:
        return Container();
    }
  }

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

  hideLoading({BuildContext? dialogContext}) {
    if (_loadingDialog != null) {
      Navigator.pop(dialogContext ?? Get.context!);
      _loadingDialog = null;
    }
  }

  showError(String? errorMessage, {String? title}) {
    if (errorMessage?.isNotEmpty == true)
      showDialog(
          context: Get.context!,
          builder: (_) => OneButtonDialogWidget(
                title: title,
                description: errorMessage?.trans,
                textConfirm: Strings.close.trans,
              ));
  }

  Widget buildContentView(BuildContext context);

  Widget get buildLoadingView => buildDefaultLoading();

  void onModelReady() {}

  void onRetry() {}

  callApi(
      {required Function callApiTask,
      Function? onSuccess,
      Function? onFail}) async {
    showLoading();
    try {
      await callApiTask();
    } catch (e, stackTrace) {}
    hideLoading();
    if (controller.progressState == ProgressState.success && onSuccess != null)
      onSuccess();
    else if (controller.progressState == ProgressState.error) {
      if (onFail != null)
        onFail();
      else {
        showError(controller.errorMessage?.trans);
      }
    }
  }

  Color get backgroundLoadingColor => getColor().colorWhite;
}
