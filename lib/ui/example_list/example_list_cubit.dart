import 'package:base_flutter/data/model/example_item.dart';
import 'package:base_flutter/ui/base_list/base_list_cubit.dart';

class ExampleListCubit extends BaseListCubit<ExampleItem> {
  int currentIndex = 0;

  @override
  Future<void> refresh({int? pageSize}) {
    currentIndex = 0;
    return super.refresh(pageSize: pageSize);
  }

  @override
  Future<List<ExampleItem>> loadData({required int page, required int pageSize}) async {
    // Simulate API call delay
    await Future.delayed(const Duration(seconds: 1));

    // Simulate data based on page
    final items = <ExampleItem>[];
    for (int i = currentIndex; i < currentIndex + pageSize; i++) {
      final index = i;
      items.add(
        ExampleItem(id: 'item_$index', title: 'Item $index', description: 'This is description for item $index'),
      );
    }
    currentIndex += items.length;
    return items;
  }
}
