// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
class _$ChatTearOff {
  const _$ChatTearOff();

  _Chat call(
      {required String id,
      required List<String> users,
      required Map<DateTime, ChatMessage> messages}) {
    return _Chat(
      id: id,
      users: users,
      messages: messages,
    );
  }

  Chat fromJson(Map<String, Object?> json) {
    return Chat.fromJson(json);
  }
}

/// @nodoc
const $Chat = _$ChatTearOff();

/// @nodoc
mixin _$Chat {
  String get id => throw _privateConstructorUsedError;
  List<String> get users => throw _privateConstructorUsedError;
  Map<DateTime, ChatMessage> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {String id, List<String> users, Map<DateTime, ChatMessage> messages});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? users = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, ChatMessage>,
    ));
  }
}

/// @nodoc
abstract class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) then) =
      __$ChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, List<String> users, Map<DateTime, ChatMessage> messages});
}

/// @nodoc
class __$ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(_Chat _value, $Res Function(_Chat) _then)
      : super(_value, (v) => _then(v as _Chat));

  @override
  _Chat get _value => super._value as _Chat;

  @override
  $Res call({
    Object? id = freezed,
    Object? users = freezed,
    Object? messages = freezed,
  }) {
    return _then(_Chat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<String>,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, ChatMessage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chat extends _Chat {
  const _$_Chat({required this.id, required this.users, required this.messages})
      : super._();

  factory _$_Chat.fromJson(Map<String, dynamic> json) => _$$_ChatFromJson(json);

  @override
  final String id;
  @override
  final List<String> users;
  @override
  final Map<DateTime, ChatMessage> messages;

  @override
  String toString() {
    return 'Chat(id: $id, users: $users, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Chat &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.messages, messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(messages));

  @JsonKey(ignore: true)
  @override
  _$ChatCopyWith<_Chat> get copyWith =>
      __$ChatCopyWithImpl<_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatToJson(this);
  }
}

abstract class _Chat extends Chat {
  const factory _Chat(
      {required String id,
      required List<String> users,
      required Map<DateTime, ChatMessage> messages}) = _$_Chat;
  const _Chat._() : super._();

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  String get id;
  @override
  List<String> get users;
  @override
  Map<DateTime, ChatMessage> get messages;
  @override
  @JsonKey(ignore: true)
  _$ChatCopyWith<_Chat> get copyWith => throw _privateConstructorUsedError;
}
