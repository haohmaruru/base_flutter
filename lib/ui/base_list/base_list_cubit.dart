import 'package:base_flutter/ui/base_list/base_list_state.dart';
import 'package:base_flutter/util/constant.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseListCubit<T> extends Cubit<BaseListState<T>> {
  BaseListCubit() : super(BaseListState.initial());

  int _page = 1;
  int _pageSize = Constant.defaultPageSize;
  bool _hasMore = true;
  final List<T> _items = <T>[];
  bool _isLoading = false;

  Future<List<T>> loadData({required int page, required int pageSize});

  Future<void> refresh({int? pageSize}) async {
    if (_isLoading) return;
    _isLoading = true;
    emit(const BaseListState.loading(isRefreshing: true));
    try {
      _page = 1;
      _pageSize = pageSize ?? _pageSize;
      final data = await loadData(page: _page, pageSize: _pageSize);
      _items
        ..clear()
        ..addAll(data);
      _hasMore = data.length >= _pageSize;
      emit(
        BaseListState.loadDataSuccess(
          items: List<T>.unmodifiable(_items),
          page: _page,
          pageSize: _pageSize,
          hasMore: _hasMore,
        ),
      );
    } catch (e) {
      emit(BaseListState.error(message: e.toString()));
    } finally {
      _isLoading = false;
    }
  }

  Future<void> loadMore() async {
    if (_isLoading || !_hasMore) return;
    _isLoading = true;
    emit(const BaseListState.loading(isLoadingMore: true));
    try {
      final nextPage = _page + 1;
      final data = await loadData(page: nextPage, pageSize: _pageSize);
      _items.addAll(data);
      _page = nextPage;
      _hasMore = data.length >= _pageSize;
      emit(
        BaseListState.loadDataSuccess(
          items: List<T>.unmodifiable(_items),
          page: _page,
          pageSize: _pageSize,
          hasMore: _hasMore,
        ),
      );
    } catch (e) {
      emit(BaseListState.error(message: e.toString()));
    } finally {
      _isLoading = false;
    }
  }

  void initialize({int pageSize = 20}) {
    _pageSize = pageSize;
    refresh(pageSize: _pageSize);
  }
}
