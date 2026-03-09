import 'package:base_flutter/ui/base_list/base_list_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_list_state.freezed.dart';

@freezed
class ExampleListState<ExampleItem> with _$ExampleListState implements BaseListState<ExampleItem> {
  const factory ExampleListState.testSize() = ExampleListStateTestSize;
}
