import 'package:base/ui/base/base_list_controller.dart';
import 'package:base/ui/base/base_page.dart';
import 'package:flutter/material.dart';

import '../../res/theme/theme_manager.dart';
import '../../widget/empty_widget.dart';

abstract class BaseListPage<I, M extends BaseListController<I>>
    extends BasePage<M> {
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

  Widget buildItem(BuildContext context, I item, int index);

  Widget buildSeparator(BuildContext context, int index) {
    return Container(
      height: itemSpacing,
      color: dividerColor,
    );
  }

  Widget buildEmptyView(BuildContext context) {
    return EmptyWidget();
  }

  bool get enableRefresh => true;

  EdgeInsets get padding => const EdgeInsets.all(0);

  double get itemSpacing => 0;

  bool get shrinkWrap => false;

  bool get reverse => false;

  bool get isLoadCacheData => false;

  Color get dividerColor => getColor().colorWhite;

  ScrollPhysics get physics => const AlwaysScrollableScrollPhysics();
}
