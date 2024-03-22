import 'package:base/ui/base/base_controller.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../data/api/api_constants.dart';

abstract class BaseListController<T> extends BaseController {
  late ScrollController controller;
  bool isShowKeyBoard = false;
  Rx<List<T>> items = Rx([]);

  dynamic _params;
  int page = 1;
  bool isLoadingMore = false;

  int get pageSize => apiPageSize;

  int get itemCount => items.value.length;

  ViewState get initState => ViewState.loading;

  bool get isGetDataLocal => false;

  double get rangeLoadMore => 500;

  bool get autoLoadData => true;

  bool get isLoadCacheData => false;

  @override
  void onInit() {
    super.onInit();
    controller = ScrollController()..addListener(_scrollListener);
    if (isLoadCacheData) {
      loadCacheData();
    } else if (autoLoadData) {
      loadData();
    }
  }

  jumpToTop() {
    controller.animateTo(
      0.0,
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 300),
    );
  }

  void _scrollListener() {
    final isScrollUp =
        controller.position.userScrollDirection == ScrollDirection.forward;
    if (controller.position.extentAfter < rangeLoadMore &&
        !isScrollUp &&
        !isShowKeyBoard) {
      loadMoreData();
    }
  }

  loadData({dynamic params, bool isClear = false}) async {
    this._params = params;
    try {
      final data = await getData(params: params, isClear: isClear);
      if (isClear) items.value.clear();
      if (data?.isNotEmpty == true) {
        items.value.addAll(data!);
        items.update((val) {});
        page++;
      }
      progressState = ProgressState.success;
      viewState.value = ViewState.loaded;
    } catch (e) {
      progressState = ProgressState.error;
      viewState.value = ViewState.loaded;
    }
  }

  loadCacheData({dynamic params}) async {
    progressState = ProgressState.success;
    viewState.value = ViewState.loaded;
    this._params = params;
    try {
      final cacheData = await getCacheData(params: params);
      if (cacheData != null && cacheData.length > 0) {
        items.value.clear();
        items.value.addAll(cacheData);
        items.update((val) {});
        page++;
      } else {
        progressState = ProgressState.error;
        viewState.value = ViewState.error;
      }
    } catch (e) {
      progressState = ProgressState.error;
      viewState.value = ViewState.error;
    }
  }

  loadMoreData({dynamic params}) async {
    if (!isLoadingMore) {
      isLoadingMore = true;
      await loadData(params: params);
      isLoadingMore = false;
    }
  }

  Future<void> refreshData({dynamic params}) async {
    page = 1;
    loadData(params: params, isClear: true);
  }

  clearAll() {
    page = 1;
    items.value.clear();
  }

  Future<List<T>?> getData({dynamic params, bool isClear});

  Future<List<T>?>? getCacheData({dynamic params}) {
    return null;
  }

  @override
  void onClose() {
    controller.removeListener(_scrollListener);
    super.onClose();
  }
}
