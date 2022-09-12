import 'package:base/ui/base/base_controller.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../../data/api/api_constants.dart';

abstract class BaseListController<T> extends BaseController {
  late ScrollController controller;
  bool isShowKeyBoard = false;
  List<T> items = [];
  dynamic _params;
  int page = 1;

  int get pageSize => PAGE_SIZE;

  int get itemCount => items.length;

  ViewState get initState => ViewState.loading;

  bool get isGetDataLocal => false;

  double get rangeLoadMore => 500;

  bool get autoLoadData => true;

  @override
  void onInit() {
    super.onInit();
    controller = new ScrollController()..addListener(_scrollListener);
    loadData();
    KeyboardVisibilityController().onChange.listen((bool visible) {
      isShowKeyBoard = visible;
    });
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
      print('KeyboardIsShow: ${isShowKeyBoard}');
      print("LoadMoreMore");
      loadMoreData();
    }
  }

  loadData({dynamic params, bool isClear = false}) async {
    print(
        "\n\n*************************** page: $page ***************************\n\n");
    this._params = params;
    try {
      final data = await getData(params: params, isClear: isClear);
      if (isClear) items.clear();
      if (data?.isNotEmpty == true) {
        items.addAll(data!);
        page++;
      }
      progressState = ProgressState.success;
      viewState = ViewState.loaded;
    } catch (e) {
      progressState = ProgressState.error;
      viewState = ViewState.loaded;
    }
    update();
  }

  loadCacheData({dynamic params}) async {
    progressState = ProgressState.success;
    viewState = ViewState.loaded;
    this._params = params;
    try {
      final cacheData = await getCacheData(params: params);
      if (cacheData != null && cacheData.length > 0) {
        items.clear();
        items.addAll(cacheData);
        page++;
        update();
      } else {
        progressState = ProgressState.error;
        viewState = ViewState.error;
      }
    } catch (e) {
      progressState = ProgressState.error;
      viewState = ViewState.error;
    }
    update();
  }

  loadMoreData({dynamic params}) {
    loadData(params: params);
  }

  Future<void> refresh({dynamic params}) async {
    page = 1;
    loadData(params: params, isClear: true);
  }

  clearAll() {
    page = 1;
    items.clear();
    update();
  }

  Future<List<T>?> getData({dynamic params, bool isClear});

  Future<List<T>?>? getCacheData({dynamic params}) {
    return null;
  }
}
