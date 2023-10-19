// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedEvent {
  SortType get sortType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SortType sortType) loadFirstPage,
    required TResult Function(SortType sortType) loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SortType sortType)? loadFirstPage,
    TResult? Function(SortType sortType)? loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortType sortType)? loadFirstPage,
    TResult Function(SortType sortType)? loadNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFirstPage value) loadFirstPage,
    required TResult Function(LoadNextPage value) loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFirstPage value)? loadFirstPage,
    TResult? Function(LoadNextPage value)? loadNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFirstPage value)? loadFirstPage,
    TResult Function(LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedEventCopyWith<FeedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res, FeedEvent>;
  @useResult
  $Res call({SortType sortType});
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res, $Val extends FeedEvent>
    implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_value.copyWith(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadFirstPageImplCopyWith<$Res>
    implements $FeedEventCopyWith<$Res> {
  factory _$$LoadFirstPageImplCopyWith(
          _$LoadFirstPageImpl value, $Res Function(_$LoadFirstPageImpl) then) =
      __$$LoadFirstPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SortType sortType});
}

/// @nodoc
class __$$LoadFirstPageImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$LoadFirstPageImpl>
    implements _$$LoadFirstPageImplCopyWith<$Res> {
  __$$LoadFirstPageImplCopyWithImpl(
      _$LoadFirstPageImpl _value, $Res Function(_$LoadFirstPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_$LoadFirstPageImpl(
      null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
    ));
  }
}

/// @nodoc

class _$LoadFirstPageImpl implements LoadFirstPage {
  const _$LoadFirstPageImpl(this.sortType);

  @override
  final SortType sortType;

  @override
  String toString() {
    return 'FeedEvent.loadFirstPage(sortType: $sortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFirstPageImpl &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFirstPageImplCopyWith<_$LoadFirstPageImpl> get copyWith =>
      __$$LoadFirstPageImplCopyWithImpl<_$LoadFirstPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SortType sortType) loadFirstPage,
    required TResult Function(SortType sortType) loadNextPage,
  }) {
    return loadFirstPage(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SortType sortType)? loadFirstPage,
    TResult? Function(SortType sortType)? loadNextPage,
  }) {
    return loadFirstPage?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortType sortType)? loadFirstPage,
    TResult Function(SortType sortType)? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadFirstPage != null) {
      return loadFirstPage(sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFirstPage value) loadFirstPage,
    required TResult Function(LoadNextPage value) loadNextPage,
  }) {
    return loadFirstPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFirstPage value)? loadFirstPage,
    TResult? Function(LoadNextPage value)? loadNextPage,
  }) {
    return loadFirstPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFirstPage value)? loadFirstPage,
    TResult Function(LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadFirstPage != null) {
      return loadFirstPage(this);
    }
    return orElse();
  }
}

abstract class LoadFirstPage implements FeedEvent {
  const factory LoadFirstPage(final SortType sortType) = _$LoadFirstPageImpl;

  @override
  SortType get sortType;
  @override
  @JsonKey(ignore: true)
  _$$LoadFirstPageImplCopyWith<_$LoadFirstPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadNextPageImplCopyWith<$Res>
    implements $FeedEventCopyWith<$Res> {
  factory _$$LoadNextPageImplCopyWith(
          _$LoadNextPageImpl value, $Res Function(_$LoadNextPageImpl) then) =
      __$$LoadNextPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SortType sortType});
}

/// @nodoc
class __$$LoadNextPageImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$LoadNextPageImpl>
    implements _$$LoadNextPageImplCopyWith<$Res> {
  __$$LoadNextPageImplCopyWithImpl(
      _$LoadNextPageImpl _value, $Res Function(_$LoadNextPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_$LoadNextPageImpl(
      null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
    ));
  }
}

/// @nodoc

class _$LoadNextPageImpl implements LoadNextPage {
  const _$LoadNextPageImpl(this.sortType);

  @override
  final SortType sortType;

  @override
  String toString() {
    return 'FeedEvent.loadNextPage(sortType: $sortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNextPageImpl &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNextPageImplCopyWith<_$LoadNextPageImpl> get copyWith =>
      __$$LoadNextPageImplCopyWithImpl<_$LoadNextPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SortType sortType) loadFirstPage,
    required TResult Function(SortType sortType) loadNextPage,
  }) {
    return loadNextPage(sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SortType sortType)? loadFirstPage,
    TResult? Function(SortType sortType)? loadNextPage,
  }) {
    return loadNextPage?.call(sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortType sortType)? loadFirstPage,
    TResult Function(SortType sortType)? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadFirstPage value) loadFirstPage,
    required TResult Function(LoadNextPage value) loadNextPage,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadFirstPage value)? loadFirstPage,
    TResult? Function(LoadNextPage value)? loadNextPage,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadFirstPage value)? loadFirstPage,
    TResult Function(LoadNextPage value)? loadNextPage,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class LoadNextPage implements FeedEvent {
  const factory LoadNextPage(final SortType sortType) = _$LoadNextPageImpl;

  @override
  SortType get sortType;
  @override
  @JsonKey(ignore: true)
  _$$LoadNextPageImplCopyWith<_$LoadNextPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FeedData feedData) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(FeedData feedData)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FeedData feedData)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res, FeedState>;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res, $Val extends FeedState>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'FeedState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FeedData feedData) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(FeedData feedData)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FeedData feedData)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements FeedState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FeedData feedData});

  $FeedDataCopyWith<$Res> get feedData;
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedData = null,
  }) {
    return _then(_$LoadedStateImpl(
      null == feedData
          ? _value.feedData
          : feedData // ignore: cast_nullable_to_non_nullable
              as FeedData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedDataCopyWith<$Res> get feedData {
    return $FeedDataCopyWith<$Res>(_value.feedData, (value) {
      return _then(_value.copyWith(feedData: value));
    });
  }
}

/// @nodoc

class _$LoadedStateImpl implements LoadedState {
  const _$LoadedStateImpl(this.feedData);

  @override
  final FeedData feedData;

  @override
  String toString() {
    return 'FeedState.loaded(feedData: $feedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            (identical(other.feedData, feedData) ||
                other.feedData == feedData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FeedData feedData) loaded,
    required TResult Function() error,
  }) {
    return loaded(feedData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(FeedData feedData)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(feedData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FeedData feedData)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(feedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements FeedState {
  const factory LoadedState(final FeedData feedData) = _$LoadedStateImpl;

  FeedData get feedData;
  @JsonKey(ignore: true)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'FeedState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FeedData feedData) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(FeedData feedData)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FeedData feedData)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements FeedState {
  const factory ErrorState() = _$ErrorStateImpl;
}
