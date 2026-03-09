import 'package:base_flutter/data/model/example_item.dart';
import 'package:base_flutter/extension/size_extension.dart';
import 'package:base_flutter/theme/text_theme.dart';
import 'package:base_flutter/ui/base_list/base_list_page_state.dart';
import 'package:base_flutter/ui/example_list/example_list_cubit.dart';
import 'package:flutter/material.dart';

class ExampleListPage extends StatefulWidget {
  const ExampleListPage({super.key});

  @override
  State<StatefulWidget> createState() => _ExampleListState();
}

// Example widget implementation
class _ExampleListState extends BaseListPageState<ExampleItem, ExampleListCubit> {
  @override
  Widget buildItem(BuildContext context, ExampleItem item, int index) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.ws, vertical: 4.hs),
      child: ListTile(
        leading: CircleAvatar(child: Text(item.id.substring(item.id.length - 1))),
        title: Text(item.title, style: textTitle),
        subtitle: Text(item.description, style: textContent),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Handle item tap
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tapped on ${item.title}')));
        },
      ),
    );
  }

  @override
  ExampleListCubit provideCubit() => ExampleListCubit();
}
