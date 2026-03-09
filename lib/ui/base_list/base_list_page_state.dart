import 'package:base_flutter/extension/context_extension.dart';
import 'package:base_flutter/ui/base_list/base_list_cubit.dart';
import 'package:base_flutter/ui/base_list/base_list_state.dart';
import 'package:base_flutter/ui/common_widget/empty_widget.dart';
import 'package:base_flutter/ui/common_widget/error_widget.dart';
import 'package:base_flutter/ui/common_widget/loading_dialog.dart';
import 'package:base_flutter/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseListPageState<T, C extends BaseListCubit<T>> extends State<StatefulWidget> {
  late ScrollController _scrollController;
  List<T>? _items;

  late C _cubit;

  C get cubit => _cubit;

  Widget? _loadingDialog;

  double get loadMoreRange => Constant.defaultMoreRange;

  Widget? header;

  Widget? footer;

  /// Padding listview with page
  EdgeInsets get padding => const EdgeInsets.all(0);

  /// Separator spacing
  double get itemSpacing => Constant.defaultItemSpacing;

  /// [shrinkWrap] of listview
  bool get shrinkWrap => false;

  /// [reverse] of list view
  bool get reverse => false;

  bool get isRefresh => true;

  /// Separator background
  Color get dividerColor => context.theme.bannerColor;

  /// [physics] of list view
  ScrollPhysics get physics => const AlwaysScrollableScrollPhysics();

  // Method build ui for each item
  Widget buildItem(BuildContext context, T item, int index);

  /// Method to build loading indicator
  Widget buildLoadingIndicator(BuildContext context) => const CircularProgressIndicator();

  /// Method to build empty state
  Widget buildEmptyState(BuildContext context) => const EmptyWidget();

  /// Optional method to build error state
  Widget? buildErrorState(BuildContext context, String error) => null;

  C provideCubit();

  /// Build widget separator of listview
  Widget buildSeparator(BuildContext context, int index) {
    return Container(height: itemSpacing, color: dividerColor);
  }

  @override
  void initState() {
    _cubit = provideCubit();
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    cubit.initialize();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - loadMoreRange) {
      cubit.loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildContent();
  }

  void listenerState(BuildContext context, BaseListState<T> state) {
    state.maybeWhen(
      loadDataSuccess: (items, page, pageSize, hasMore) {
        hideLoading();
        _items = items;
      },
      loading: (isRefreshing, isLoadingMore) {
        if (_items?.isNotEmpty == true) {
          showLoading();
        }
      },
      orElse: () {
        hideLoading();
      },
    );
  }

  Widget buildContent() {
    return Scaffold(
      body: BlocConsumer<BaseListCubit<T>, BaseListState<T>>(
        bloc: cubit,
        builder: (context, state) {
          return buildContentState(context, state);
        },
        listener: (context, state) {
          listenerState(context, state);
        },
      ),
    );
  }

  Widget buildContentState(BuildContext context, BaseListState<T> state) {
    return state.maybeWhen(
      initial: () => buildLoadingState(context),
      loading: (isRefreshing, isLoadingMore) =>
          (_items?.isNotEmpty == true) ? buildLoadedState(_items!) : buildLoadingState(context),
      loadDataSuccess: (items, page, pageSize, hasMore) => buildLoadedState(items),
      error: (message) => _buildErrorState(context, message),
      orElse: () => SizedBox(),
    );
  }

  Widget buildLoadingState(BuildContext context) {
    return Center(child: buildLoadingIndicator(context));
  }

  Widget buildLoadedState(List<T> items) {
    if (items.isEmpty) {
      return buildEmptyState(context);
    }
    Widget listview = ListView.separated(
      controller: _scrollController,
      padding: padding,
      shrinkWrap: shrinkWrap,
      physics: physics,
      itemCount: items.length + (header != null ? 1 : 0) + (footer != null ? 1 : 0),
      separatorBuilder: (context, index) => buildSeparator(context, index),
      itemBuilder: (context, index) {
        // Header
        if (header != null && index == 0) {
          return header!;
        }

        // Adjust index for header
        final adjustedIndex = header != null ? index - 1 : index;

        // Items
        if (adjustedIndex < items.length) {
          return buildItem(context, items[adjustedIndex], adjustedIndex);
        }

        // Footer
        if (footer != null && adjustedIndex == items.length) {
          return footer!;
        }

        return const SizedBox.shrink();
      },
    );
    return isRefresh ? RefreshIndicator(onRefresh: () => cubit.refresh(), child: listview) : listview;
  }

  Widget _buildErrorState(BuildContext context, String errorMessage) {
    return buildErrorState(context, errorMessage) ??
        ErrorViewWidget(message: errorMessage, onRetry: () => cubit.refresh());
  }

  /// Function for show dialog loading
  /// Use for case you want to show loading while do something
  showLoading() {
    if (_loadingDialog == null) {
      _loadingDialog = LoadingDialog();
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => _loadingDialog ?? Container(color: Colors.transparent),
      );
    }
  }

  /// Function for hide dialog loading after it showed
  hideLoading() {
    if (_loadingDialog != null) {
      Navigator.pop(context);
      _loadingDialog = null;
    }
  }
}
