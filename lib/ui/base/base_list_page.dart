import 'package:base/res/theme/theme_manager.dart';
import 'package:base/ui/base/base_list_controller.dart';
import 'package:base/ui/base/base_page.dart';
import 'package:base/widget/empty_widget.dart';
import 'package:flutter/material.dart';

//ignore: must_be_immutable
abstract class BaseListPage<M, C extends BaseListController<M>>
    extends BasePage<C> {
  final GlobalKey<RefreshIndicatorState> refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  Widget buildContentView(BuildContext context) {
    Widget content;
    if (controller.items.value.isEmpty) {
      content = Stack(children: <Widget>[
        ListView(
          physics: const AlwaysScrollableScrollPhysics(),
        ),
        buildEmptyView(context),
      ]);
    } else {
      content = ListView.separated(
          physics: physics,
          shrinkWrap: shrinkWrap,
          reverse: reverse,
          padding: padding,
          controller: controller.controller,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) =>
              buildItem(context, controller.items.value[index], index),
          separatorBuilder: (context, index) => buildSeparator(context, index),
          itemCount: controller.items.value.length);
    }
    if (enableRefresh) {
      content = RefreshIndicator(
        child: content,
        onRefresh: onRefresh,
        key: refreshIndicatorKey,
      );
    }
    return content;
  }

  Future<void> onRefresh() async {
    return controller.refreshData();
  }

  @override
  void onRetry() {
    controller.loadData();
  }

  Widget buildItem(BuildContext context, M item, int index);

  /// Build widget separator of listview
  Widget buildSeparator(BuildContext context, int index) {
    return Container(
      height: itemSpacing,
      color: dividerColor,
    );
  }

  /// Build widget show when listview empty
  Widget buildEmptyView(BuildContext context) {
    return EmptyWidget();
  }

  /// enable pull to refresh for listview
  bool get enableRefresh => true;

  /// Padding listview with page
  EdgeInsets get padding => const EdgeInsets.all(0);

  /// Separator spacing
  double get itemSpacing => 0;

  /// [shrinkWrap] of listview
  bool get shrinkWrap => false;

  /// [reverse] of list view
  bool get reverse => false;

  /// Separator background
  Color get dividerColor => themes.colorWhite;

  /// [physics] of list view
  ScrollPhysics get physics => const AlwaysScrollableScrollPhysics();
}
