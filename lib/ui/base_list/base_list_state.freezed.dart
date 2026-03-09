// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseListState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseListState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseListState<$T>()';
}


}

/// @nodoc
class $BaseListStateCopyWith<T,$Res>  {
$BaseListStateCopyWith(BaseListState<T> _, $Res Function(BaseListState<T>) __);
}


/// Adds pattern-matching-related methods to [BaseListState].
extension BaseListStatePatterns<T> on BaseListState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( BaseListStateInitial<T> value)?  initial,TResult Function( BaseListStateLoading<T> value)?  loading,TResult Function( BaseListStateLoadDataSuccess<T> value)?  loadDataSuccess,TResult Function( BaseListStateError<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case BaseListStateInitial() when initial != null:
return initial(_that);case BaseListStateLoading() when loading != null:
return loading(_that);case BaseListStateLoadDataSuccess() when loadDataSuccess != null:
return loadDataSuccess(_that);case BaseListStateError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( BaseListStateInitial<T> value)  initial,required TResult Function( BaseListStateLoading<T> value)  loading,required TResult Function( BaseListStateLoadDataSuccess<T> value)  loadDataSuccess,required TResult Function( BaseListStateError<T> value)  error,}){
final _that = this;
switch (_that) {
case BaseListStateInitial():
return initial(_that);case BaseListStateLoading():
return loading(_that);case BaseListStateLoadDataSuccess():
return loadDataSuccess(_that);case BaseListStateError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( BaseListStateInitial<T> value)?  initial,TResult? Function( BaseListStateLoading<T> value)?  loading,TResult? Function( BaseListStateLoadDataSuccess<T> value)?  loadDataSuccess,TResult? Function( BaseListStateError<T> value)?  error,}){
final _that = this;
switch (_that) {
case BaseListStateInitial() when initial != null:
return initial(_that);case BaseListStateLoading() when loading != null:
return loading(_that);case BaseListStateLoadDataSuccess() when loadDataSuccess != null:
return loadDataSuccess(_that);case BaseListStateError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isRefreshing,  bool isLoadingMore)?  loading,TResult Function( List<T> items,  int page,  int pageSize,  bool hasMore)?  loadDataSuccess,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case BaseListStateInitial() when initial != null:
return initial();case BaseListStateLoading() when loading != null:
return loading(_that.isRefreshing,_that.isLoadingMore);case BaseListStateLoadDataSuccess() when loadDataSuccess != null:
return loadDataSuccess(_that.items,_that.page,_that.pageSize,_that.hasMore);case BaseListStateError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isRefreshing,  bool isLoadingMore)  loading,required TResult Function( List<T> items,  int page,  int pageSize,  bool hasMore)  loadDataSuccess,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case BaseListStateInitial():
return initial();case BaseListStateLoading():
return loading(_that.isRefreshing,_that.isLoadingMore);case BaseListStateLoadDataSuccess():
return loadDataSuccess(_that.items,_that.page,_that.pageSize,_that.hasMore);case BaseListStateError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isRefreshing,  bool isLoadingMore)?  loading,TResult? Function( List<T> items,  int page,  int pageSize,  bool hasMore)?  loadDataSuccess,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case BaseListStateInitial() when initial != null:
return initial();case BaseListStateLoading() when loading != null:
return loading(_that.isRefreshing,_that.isLoadingMore);case BaseListStateLoadDataSuccess() when loadDataSuccess != null:
return loadDataSuccess(_that.items,_that.page,_that.pageSize,_that.hasMore);case BaseListStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class BaseListStateInitial<T> implements BaseListState<T> {
  const BaseListStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseListStateInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseListState<$T>.initial()';
}


}




/// @nodoc


class BaseListStateLoading<T> implements BaseListState<T> {
  const BaseListStateLoading({this.isRefreshing = false, this.isLoadingMore = false});
  

@JsonKey() final  bool isRefreshing;
@JsonKey() final  bool isLoadingMore;

/// Create a copy of BaseListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseListStateLoadingCopyWith<T, BaseListStateLoading<T>> get copyWith => _$BaseListStateLoadingCopyWithImpl<T, BaseListStateLoading<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseListStateLoading<T>&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,isRefreshing,isLoadingMore);

@override
String toString() {
  return 'BaseListState<$T>.loading(isRefreshing: $isRefreshing, isLoadingMore: $isLoadingMore)';
}


}

/// @nodoc
abstract mixin class $BaseListStateLoadingCopyWith<T,$Res> implements $BaseListStateCopyWith<T, $Res> {
  factory $BaseListStateLoadingCopyWith(BaseListStateLoading<T> value, $Res Function(BaseListStateLoading<T>) _then) = _$BaseListStateLoadingCopyWithImpl;
@useResult
$Res call({
 bool isRefreshing, bool isLoadingMore
});




}
/// @nodoc
class _$BaseListStateLoadingCopyWithImpl<T,$Res>
    implements $BaseListStateLoadingCopyWith<T, $Res> {
  _$BaseListStateLoadingCopyWithImpl(this._self, this._then);

  final BaseListStateLoading<T> _self;
  final $Res Function(BaseListStateLoading<T>) _then;

/// Create a copy of BaseListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isRefreshing = null,Object? isLoadingMore = null,}) {
  return _then(BaseListStateLoading<T>(
isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class BaseListStateLoadDataSuccess<T> implements BaseListState<T> {
  const BaseListStateLoadDataSuccess({final  List<T> items = const [], this.page = 1, this.pageSize = 20, this.hasMore = false}): _items = items;
  

 final  List<T> _items;
@JsonKey() List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@JsonKey() final  int page;
@JsonKey() final  int pageSize;
@JsonKey() final  bool hasMore;

/// Create a copy of BaseListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseListStateLoadDataSuccessCopyWith<T, BaseListStateLoadDataSuccess<T>> get copyWith => _$BaseListStateLoadDataSuccessCopyWithImpl<T, BaseListStateLoadDataSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseListStateLoadDataSuccess<T>&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,pageSize,hasMore);

@override
String toString() {
  return 'BaseListState<$T>.loadDataSuccess(items: $items, page: $page, pageSize: $pageSize, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $BaseListStateLoadDataSuccessCopyWith<T,$Res> implements $BaseListStateCopyWith<T, $Res> {
  factory $BaseListStateLoadDataSuccessCopyWith(BaseListStateLoadDataSuccess<T> value, $Res Function(BaseListStateLoadDataSuccess<T>) _then) = _$BaseListStateLoadDataSuccessCopyWithImpl;
@useResult
$Res call({
 List<T> items, int page, int pageSize, bool hasMore
});




}
/// @nodoc
class _$BaseListStateLoadDataSuccessCopyWithImpl<T,$Res>
    implements $BaseListStateLoadDataSuccessCopyWith<T, $Res> {
  _$BaseListStateLoadDataSuccessCopyWithImpl(this._self, this._then);

  final BaseListStateLoadDataSuccess<T> _self;
  final $Res Function(BaseListStateLoadDataSuccess<T>) _then;

/// Create a copy of BaseListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? hasMore = null,}) {
  return _then(BaseListStateLoadDataSuccess<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class BaseListStateError<T> implements BaseListState<T> {
  const BaseListStateError({this.message = ''});
  

@JsonKey() final  String message;

/// Create a copy of BaseListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseListStateErrorCopyWith<T, BaseListStateError<T>> get copyWith => _$BaseListStateErrorCopyWithImpl<T, BaseListStateError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseListStateError<T>&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BaseListState<$T>.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $BaseListStateErrorCopyWith<T,$Res> implements $BaseListStateCopyWith<T, $Res> {
  factory $BaseListStateErrorCopyWith(BaseListStateError<T> value, $Res Function(BaseListStateError<T>) _then) = _$BaseListStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BaseListStateErrorCopyWithImpl<T,$Res>
    implements $BaseListStateErrorCopyWith<T, $Res> {
  _$BaseListStateErrorCopyWithImpl(this._self, this._then);

  final BaseListStateError<T> _self;
  final $Res Function(BaseListStateError<T>) _then;

/// Create a copy of BaseListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BaseListStateError<T>(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
