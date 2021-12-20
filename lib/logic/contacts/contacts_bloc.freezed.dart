// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactsEventTearOff {
  const _$ContactsEventTearOff();

  _FetchContacts fetchContacts() {
    return const _FetchContacts();
  }
}

/// @nodoc
const $ContactsEvent = _$ContactsEventTearOff();

/// @nodoc
mixin _$ContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchContacts value) fetchContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchContacts value)? fetchContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchContacts value)? fetchContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
          ContactsEvent value, $Res Function(ContactsEvent) then) =
      _$ContactsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  final ContactsEvent _value;
  // ignore: unused_field
  final $Res Function(ContactsEvent) _then;
}

/// @nodoc
abstract class _$FetchContactsCopyWith<$Res> {
  factory _$FetchContactsCopyWith(
          _FetchContacts value, $Res Function(_FetchContacts) then) =
      __$FetchContactsCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchContactsCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res>
    implements _$FetchContactsCopyWith<$Res> {
  __$FetchContactsCopyWithImpl(
      _FetchContacts _value, $Res Function(_FetchContacts) _then)
      : super(_value, (v) => _then(v as _FetchContacts));

  @override
  _FetchContacts get _value => super._value as _FetchContacts;
}

/// @nodoc

class _$_FetchContacts implements _FetchContacts {
  const _$_FetchContacts();

  @override
  String toString() {
    return 'ContactsEvent.fetchContacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchContacts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchContacts,
  }) {
    return fetchContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchContacts,
  }) {
    return fetchContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchContacts,
    required TResult orElse(),
  }) {
    if (fetchContacts != null) {
      return fetchContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchContacts value) fetchContacts,
  }) {
    return fetchContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchContacts value)? fetchContacts,
  }) {
    return fetchContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchContacts value)? fetchContacts,
    required TResult orElse(),
  }) {
    if (fetchContacts != null) {
      return fetchContacts(this);
    }
    return orElse();
  }
}

abstract class _FetchContacts implements ContactsEvent {
  const factory _FetchContacts() = _$_FetchContacts;
}

/// @nodoc
class _$ContactsStateTearOff {
  const _$ContactsStateTearOff();

  _ContactsStateInitial initial() {
    return const _ContactsStateInitial();
  }

  _ContactsStateInProgress inProgress() {
    return const _ContactsStateInProgress();
  }

  _ContactsStateSuccess success(List<QueryDocumentSnapshot<User>> users) {
    return _ContactsStateSuccess(
      users,
    );
  }

  _ContactsStateError error() {
    return const _ContactsStateError();
  }
}

/// @nodoc
const $ContactsState = _$ContactsStateTearOff();

/// @nodoc
mixin _$ContactsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<QueryDocumentSnapshot<User>> users) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<QueryDocumentSnapshot<User>> users)? success,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<QueryDocumentSnapshot<User>> users)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsStateInitial value) initial,
    required TResult Function(_ContactsStateInProgress value) inProgress,
    required TResult Function(_ContactsStateSuccess value) success,
    required TResult Function(_ContactsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactsStateInitial value)? initial,
    TResult Function(_ContactsStateInProgress value)? inProgress,
    TResult Function(_ContactsStateSuccess value)? success,
    TResult Function(_ContactsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsStateInitial value)? initial,
    TResult Function(_ContactsStateInProgress value)? inProgress,
    TResult Function(_ContactsStateSuccess value)? success,
    TResult Function(_ContactsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  final ContactsState _value;
  // ignore: unused_field
  final $Res Function(ContactsState) _then;
}

/// @nodoc
abstract class _$ContactsStateInitialCopyWith<$Res> {
  factory _$ContactsStateInitialCopyWith(_ContactsStateInitial value,
          $Res Function(_ContactsStateInitial) then) =
      __$ContactsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ContactsStateInitialCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res>
    implements _$ContactsStateInitialCopyWith<$Res> {
  __$ContactsStateInitialCopyWithImpl(
      _ContactsStateInitial _value, $Res Function(_ContactsStateInitial) _then)
      : super(_value, (v) => _then(v as _ContactsStateInitial));

  @override
  _ContactsStateInitial get _value => super._value as _ContactsStateInitial;
}

/// @nodoc

class _$_ContactsStateInitial implements _ContactsStateInitial {
  const _$_ContactsStateInitial();

  @override
  String toString() {
    return 'ContactsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ContactsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<QueryDocumentSnapshot<User>> users) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<QueryDocumentSnapshot<User>> users)? success,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<QueryDocumentSnapshot<User>> users)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsStateInitial value) initial,
    required TResult Function(_ContactsStateInProgress value) inProgress,
    required TResult Function(_ContactsStateSuccess value) success,
    required TResult Function(_ContactsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactsStateInitial value)? initial,
    TResult Function(_ContactsStateInProgress value)? inProgress,
    TResult Function(_ContactsStateSuccess value)? success,
    TResult Function(_ContactsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsStateInitial value)? initial,
    TResult Function(_ContactsStateInProgress value)? inProgress,
    TResult Function(_ContactsStateSuccess value)? success,
    TResult Function(_ContactsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContactsStateInitial implements ContactsState {
  const factory _ContactsStateInitial() = _$_ContactsStateInitial;
}

/// @nodoc
abstract class _$ContactsStateInProgressCopyWith<$Res> {
  factory _$ContactsStateInProgressCopyWith(_ContactsStateInProgress value,
          $Res Function(_ContactsStateInProgress) then) =
      __$ContactsStateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ContactsStateInProgressCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res>
    implements _$ContactsStateInProgressCopyWith<$Res> {
  __$ContactsStateInProgressCopyWithImpl(_ContactsStateInProgress _value,
      $Res Function(_ContactsStateInProgress) _then)
      : super(_value, (v) => _then(v as _ContactsStateInProgress));

  @override
  _ContactsStateInProgress get _value =>
      super._value as _ContactsStateInProgress;
}

/// @nodoc

class _$_ContactsStateInProgress implements _ContactsStateInProgress {
  const _$_ContactsStateInProgress();

  @override
  String toString() {
    return 'ContactsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ContactsStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<QueryDocumentSnapshot<User>> users) success,
    required TResult Function() error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<QueryDocumentSnapshot<User>> users)? success,
    TResult Function()? error,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<QueryDocumentSnapshot<User>> users)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsStateInitial value) initial,
    required TResult Function(_ContactsStateInProgress value) inProgress,
    required TResult Function(_ContactsStateSuccess value) success,
    required TResult Function(_ContactsStateError value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactsStateInitial value)? initial,
    TResult Function(_ContactsStateInProgress value)? inProgress,
    TResult Function(_ContactsStateSuccess value)? success,
    TResult Function(_ContactsStateError value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsStateInitial value)? initial,
    TResult Function(_ContactsStateInProgress value)? inProgress,
    TResult Function(_ContactsStateSuccess value)? success,
    TResult Function(_ContactsStateError value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _ContactsStateInProgress implements ContactsState {
  const factory _ContactsStateInProgress() = _$_ContactsStateInProgress;
}

/// @nodoc
abstract class _$ContactsStateSuccessCopyWith<$Res> {
  factory _$ContactsStateSuccessCopyWith(_ContactsStateSuccess value,
          $Res Function(_ContactsStateSuccess) then) =
      __$ContactsStateSuccessCopyWithImpl<$Res>;
  $Res call({List<QueryDocumentSnapshot<User>> users});
}

/// @nodoc
class __$ContactsStateSuccessCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res>
    implements _$ContactsStateSuccessCopyWith<$Res> {
  __$ContactsStateSuccessCopyWithImpl(
      _ContactsStateSuccess _value, $Res Function(_ContactsStateSuccess) _then)
      : super(_value, (v) => _then(v as _ContactsStateSuccess));

  @override
  _ContactsStateSuccess get _value => super._value as _ContactsStateSuccess;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_ContactsStateSuccess(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<QueryDocumentSnapshot<User>>,
    ));
  }
}

/// @nodoc

class _$_ContactsStateSuccess implements _ContactsStateSuccess {
  const _$_ContactsStateSuccess(this.users);

  @override
  final List<QueryDocumentSnapshot<User>> users;

  @override
  String toString() {
    return 'ContactsState.success(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactsStateSuccess &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  _$ContactsStateSuccessCopyWith<_ContactsStateSuccess> get copyWith =>
      __$ContactsStateSuccessCopyWithImpl<_ContactsStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<QueryDocumentSnapshot<User>> users) success,
    required TResult Function() error,
  }) {
    return success(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<QueryDocumentSnapshot<User>> users)? success,
    TResult Function()? error,
  }) {
    return success?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<QueryDocumentSnapshot<User>> users)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsStateInitial value) initial,
    required TResult Function(_ContactsStateInProgress value) inProgress,
    required TResult Function(_ContactsStateSuccess value) success,
    required TResult Function(_ContactsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactsStateInitial value)? initial,
    TResult Function(_ContactsStateInProgress value)? inProgress,
    TResult Function(_ContactsStateSuccess value)? success,
    TResult Function(_ContactsStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsStateInitial value)? initial,
    TResult Function(_ContactsStateInProgress value)? inProgress,
    TResult Function(_ContactsStateSuccess value)? success,
    TResult Function(_ContactsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ContactsStateSuccess implements ContactsState {
  const factory _ContactsStateSuccess(List<QueryDocumentSnapshot<User>> users) =
      _$_ContactsStateSuccess;

  List<QueryDocumentSnapshot<User>> get users;
  @JsonKey(ignore: true)
  _$ContactsStateSuccessCopyWith<_ContactsStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ContactsStateErrorCopyWith<$Res> {
  factory _$ContactsStateErrorCopyWith(
          _ContactsStateError value, $Res Function(_ContactsStateError) then) =
      __$ContactsStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ContactsStateErrorCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res>
    implements _$ContactsStateErrorCopyWith<$Res> {
  __$ContactsStateErrorCopyWithImpl(
      _ContactsStateError _value, $Res Function(_ContactsStateError) _then)
      : super(_value, (v) => _then(v as _ContactsStateError));

  @override
  _ContactsStateError get _value => super._value as _ContactsStateError;
}

/// @nodoc

class _$_ContactsStateError implements _ContactsStateError {
  const _$_ContactsStateError();

  @override
  String toString() {
    return 'ContactsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ContactsStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<QueryDocumentSnapshot<User>> users) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<QueryDocumentSnapshot<User>> users)? success,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<QueryDocumentSnapshot<User>> users)? success,
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
    required TResult Function(_ContactsStateInitial value) initial,
    required TResult Function(_ContactsStateInProgress value) inProgress,
    required TResult Function(_ContactsStateSuccess value) success,
    required TResult Function(_ContactsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactsStateInitial value)? initial,
    TResult Function(_ContactsStateInProgress value)? inProgress,
    TResult Function(_ContactsStateSuccess value)? success,
    TResult Function(_ContactsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsStateInitial value)? initial,
    TResult Function(_ContactsStateInProgress value)? inProgress,
    TResult Function(_ContactsStateSuccess value)? success,
    TResult Function(_ContactsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContactsStateError implements ContactsState {
  const factory _ContactsStateError() = _$_ContactsStateError;
}
