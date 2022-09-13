import 'package:base/ui/base/base_list_controller.dart';

import '../base/base_controller.dart';

class ListController extends BaseListController<String> {
  @override
  bool get autoLoadData => true;

  ViewState get initState => ViewState.loading;

  @override
  Future<List<String>?> getData({params, bool isClear = false}) async {
    await Future.delayed(Duration(seconds: 1));
    return List.generate(30, (index) => "${(page - 1) * pageSize + index}");
  }
}
