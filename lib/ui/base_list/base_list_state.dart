import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_list_state.freezed.dart';

@freezed
class BaseListState<T> with _$BaseListState<T> {
  const factory BaseListState.initial() = BaseListStateInitial;

  const factory BaseListState.loading({
    @Default(false) bool isRefreshing,
    @Default(false) bool isLoadingMore,
  }) = BaseListStateLoading;

  const factory BaseListState.loadDataSuccess({
    @Default(const []) List<T> items,
    @Default(1) int page,
    @Default(20) int pageSize,
    @Default(false) bool hasMore,
  }) = BaseListStateLoadDataSuccess;

  const factory BaseListState.error({@Default('') String message}) =
      BaseListStateError;
}
