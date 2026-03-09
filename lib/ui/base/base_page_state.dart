// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'base_list_state.freezed.dart';
//
// @freezed
// class BaseState with _$BaseState<T> {
//   const factory BaseListState.initial() = _Initial;
//
//   const factory BaseListState.loading({
//     @Default(false) bool isRefreshing,
//     @Default(false) bool isLoadingMore,
//   }) = _Loading;
//
//   const factory BaseListState.loadDataSuccess({
//     @Default(const []) List<T> items,
//     @Default(1) int page,
//     @Default(20) int pageSize,
//     @Default(false) bool hasMore,
//   }) = _LoadDataSuccess;
//
//   const factory BaseListState.error({@Default('') String message}) = _Error;
// }
