// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flutter_demo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlutterDemoState {
  PageState get pageState => throw _privateConstructorUsedError;
  bool get isLogged => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlutterDemoStateCopyWith<FlutterDemoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterDemoStateCopyWith<$Res> {
  factory $FlutterDemoStateCopyWith(
          FlutterDemoState value, $Res Function(FlutterDemoState) then) =
      _$FlutterDemoStateCopyWithImpl<$Res, FlutterDemoState>;
  @useResult
  $Res call({PageState pageState, bool isLogged});
}

/// @nodoc
class _$FlutterDemoStateCopyWithImpl<$Res, $Val extends FlutterDemoState>
    implements $FlutterDemoStateCopyWith<$Res> {
  _$FlutterDemoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? isLogged = null,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlutterDemoStateCopyWith<$Res>
    implements $FlutterDemoStateCopyWith<$Res> {
  factory _$$_FlutterDemoStateCopyWith(
          _$_FlutterDemoState value, $Res Function(_$_FlutterDemoState) then) =
      __$$_FlutterDemoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageState pageState, bool isLogged});
}

/// @nodoc
class __$$_FlutterDemoStateCopyWithImpl<$Res>
    extends _$FlutterDemoStateCopyWithImpl<$Res, _$_FlutterDemoState>
    implements _$$_FlutterDemoStateCopyWith<$Res> {
  __$$_FlutterDemoStateCopyWithImpl(
      _$_FlutterDemoState _value, $Res Function(_$_FlutterDemoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
    Object? isLogged = null,
  }) {
    return _then(_$_FlutterDemoState(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as PageState,
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FlutterDemoState implements _FlutterDemoState {
  _$_FlutterDemoState({required this.pageState, required this.isLogged});

  @override
  final PageState pageState;
  @override
  final bool isLogged;

  @override
  String toString() {
    return 'FlutterDemoState(pageState: $pageState, isLogged: $isLogged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDemoState &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState, isLogged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlutterDemoStateCopyWith<_$_FlutterDemoState> get copyWith =>
      __$$_FlutterDemoStateCopyWithImpl<_$_FlutterDemoState>(this, _$identity);
}

abstract class _FlutterDemoState implements FlutterDemoState {
  factory _FlutterDemoState(
      {required final PageState pageState,
      required final bool isLogged}) = _$_FlutterDemoState;

  @override
  PageState get pageState;
  @override
  bool get isLogged;
  @override
  @JsonKey(ignore: true)
  _$$_FlutterDemoStateCopyWith<_$_FlutterDemoState> get copyWith =>
      throw _privateConstructorUsedError;
}
