import 'package:base_flutter/extension/context_extension.dart';
import 'package:base_flutter/ui/base_list/base_list_cubit.dart';
import 'package:base_flutter/ui/base_list/base_list_page_state.dart';
import 'package:base_flutter/ui/base_list/base_list_state.dart';
import 'package:base_flutter/ui/common_widget/empty_widget.dart';
import 'package:base_flutter/ui/common_widget/error_widget.dart';
import 'package:base_flutter/ui/common_widget/loading_dialog.dart';
import 'package:base_flutter/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///
/// This widget uses [BaseListPageState] to manage its state and build its UI.
/// It's designed to be extended by concrete list page implementations.
///
/// Type [T] represents the type of data for each item in the list.
/// Type [C] represents the type of Cubit managing the list's logic,
/// which must extend [BaseListCubit].
class BaseListWidget<T, C extends BaseListCubit<T>> extends StatefulWidget {
  /// Optional widget to display at the top of the list.
  /// Corresponds to [BaseListPageState.header].
  final Widget? header;

  /// Optional widget to display at the bottom of the list.
  /// Corresponds to [BaseListPageState.footer].
  final Widget? footer;

  /// Padding for the [ListView] from the edges of the page.
  /// Corresponds to [BaseListPageState.padding].
  final EdgeInsets? padding;

  /// Spacing between items in the list (height of the separator).
  /// Corresponds to [BaseListPageState.itemSpacing].
  final double? itemSpacing;

  /// Whether the [ListView] should adjust its size to the inner content.
  /// Corresponds to [BaseListPageState.shrinkWrap].
  final bool? shrinkWrap;

  /// Whether the [ListView] should display items in reverse order.
  /// Corresponds to [BaseListPageState.reverse].
  final bool? reverse;

  final bool? isRefresh;

  /// Background color for the separator widget between items.
  /// Corresponds to [BaseListPageState.dividerColor].
  final Color? dividerColor;

  /// How the [ListView] responds to user scroll actions.
  /// Corresponds to [BaseListPageState.physics].
  final ScrollPhysics? physics;

  /// Distance (in pixels) from the end of the list to start triggering
  /// the load more data event.
  /// Corresponds to [BaseListPageState.loadMoreRange].
  final double? loadMoreRange;

  /// A builder function to create the widget for each item in the list.
  /// This will be used by [BaseListPageState.buildItem].
  final Widget Function(BuildContext context, T item, int index) itemBuilder;

  /// A builder function to provide an instance of the Cubit [C].
  /// This will be used by [BaseListPageState.provideCubit].
  final C Function() cubitProvider;

  /// Optional builder function to create the loading indicator widget.
  /// Corresponds to [BaseListPageState.buildLoadingIndicator].
  final WidgetBuilder? loadingIndicatorBuilder;

  /// Optional builder function to create the widget displayed when the list is empty.
  /// Corresponds to [BaseListPageState.buildEmptyState].
  final WidgetBuilder? emptyStateBuilder;

  /// Optional builder function to create the widget displayed when an error occurs.
  /// Corresponds to [BaseListPageState.buildErrorState].
  final Widget? Function(BuildContext context, String error)? errorStateBuilder;

  /// Optional builder function to create the separator widget between items.
  /// Corresponds to [BaseListPageState.buildSeparator].
  final Widget Function(BuildContext context, int index)? separatorBuilder;

  /// Creates a new [BaseListWidget].
  ///
  /// Requires [itemBuilder] and [cubitProvider].
  /// Other parameters are optional and allow for customization of the list's
  /// appearance and behavior, overriding the defaults in [BaseListPageState].
  const BaseListWidget({
    super.key,
    required this.itemBuilder,
    required this.cubitProvider,
    this.header,
    this.footer,
    this.padding,
    this.itemSpacing,
    this.shrinkWrap,
    this.reverse,
    this.isRefresh,
    this.dividerColor,
    this.physics,
    this.loadMoreRange,
    this.loadingIndicatorBuilder,
    this.emptyStateBuilder,
    this.errorStateBuilder,
    this.separatorBuilder,
  });

  @override
  // We need to create a specific State class that knows about the BaseListPage
  // and can pass down the overridable properties.
  // ignore: library_private_types_in_public_api
  BaseListPageStateConcrete<T, C> createState() => BaseListPageStateConcrete<T, C>();
}

/// The concrete [State] implementation for [BaseListWidget].
///
/// This class extends [BaseListPageState] and overrides its properties and methods
/// with the values provided to the [BaseListWidget] widget.
class BaseListPageStateConcrete<T, C extends BaseListCubit<T>> extends State<BaseListWidget<T, C>> {
  // --- Overriding properties from BaseListPageState ---
  List<T>? _items;

  late C _cubit;

  C get cubit => _cubit;

  Widget? _loadingDialog;

  late ScrollController _scrollController;

  Widget? get header => widget.header;

  Widget? get footer => widget.footer;

  EdgeInsets get padding => widget.padding ?? const EdgeInsets.all(0);

  double get itemSpacing => widget.itemSpacing ?? Constant.defaultItemSpacing;

  bool get shrinkWrap => widget.shrinkWrap ?? false;

  bool get reverse => widget.reverse ?? false;

  bool get isRefresh => true;

  Color get dividerColor => widget.dividerColor ?? context.theme.bannerColor;

  ScrollPhysics get physics => widget.physics ?? const AlwaysScrollableScrollPhysics();

  double get loadMoreRange => widget.loadMoreRange ?? Constant.defaultMoreRange;

  // --- Overriding methods from BaseListPageState ---

  C provideCubit() {
    return widget.cubitProvider();
  }

  Widget buildItem(BuildContext context, T item, int index) {
    return widget.itemBuilder(context, item, index);
  }

  Widget buildLoadingIndicator(BuildContext context) {
    if (widget.loadingIndicatorBuilder != null) {
      return widget.loadingIndicatorBuilder!(context);
    }
    return const CircularProgressIndicator();
  }

  Widget buildEmptyState(BuildContext context) {
    if (widget.emptyStateBuilder != null) {
      return widget.emptyStateBuilder!(context);
    }
    return const EmptyWidget();
  }

  Widget? buildErrorState(BuildContext context, String error) {
    if (widget.errorStateBuilder != null) {
      return widget.errorStateBuilder!(context, error);
    }
    return ErrorViewWidget(message: error, onRetry: () => cubit.refresh());
  }

  Widget buildSeparator(BuildContext context, int index) {
    if (widget.separatorBuilder != null) {
      return widget.separatorBuilder!(context, index);
    }
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
