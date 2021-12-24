// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  _StartNewChat startNewChat(User user) {
    return _StartNewChat(
      user,
    );
  }

  _CloseChat closeChat() {
    return const _CloseChat();
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) startNewChat,
    required TResult Function() closeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? startNewChat,
    TResult Function()? closeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? startNewChat,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartNewChat value) startNewChat,
    required TResult Function(_CloseChat value) closeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartNewChat value)? startNewChat,
    TResult Function(_CloseChat value)? closeChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartNewChat value)? startNewChat,
    TResult Function(_CloseChat value)? closeChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$StartNewChatCopyWith<$Res> {
  factory _$StartNewChatCopyWith(
          _StartNewChat value, $Res Function(_StartNewChat) then) =
      __$StartNewChatCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$StartNewChatCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$StartNewChatCopyWith<$Res> {
  __$StartNewChatCopyWithImpl(
      _StartNewChat _value, $Res Function(_StartNewChat) _then)
      : super(_value, (v) => _then(v as _StartNewChat));

  @override
  _StartNewChat get _value => super._value as _StartNewChat;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_StartNewChat(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_StartNewChat implements _StartNewChat {
  const _$_StartNewChat(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ChatEvent.startNewChat(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartNewChat &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$StartNewChatCopyWith<_StartNewChat> get copyWith =>
      __$StartNewChatCopyWithImpl<_StartNewChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) startNewChat,
    required TResult Function() closeChat,
  }) {
    return startNewChat(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? startNewChat,
    TResult Function()? closeChat,
  }) {
    return startNewChat?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? startNewChat,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (startNewChat != null) {
      return startNewChat(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartNewChat value) startNewChat,
    required TResult Function(_CloseChat value) closeChat,
  }) {
    return startNewChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartNewChat value)? startNewChat,
    TResult Function(_CloseChat value)? closeChat,
  }) {
    return startNewChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartNewChat value)? startNewChat,
    TResult Function(_CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (startNewChat != null) {
      return startNewChat(this);
    }
    return orElse();
  }
}

abstract class _StartNewChat implements ChatEvent {
  const factory _StartNewChat(User user) = _$_StartNewChat;

  User get user;
  @JsonKey(ignore: true)
  _$StartNewChatCopyWith<_StartNewChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CloseChatCopyWith<$Res> {
  factory _$CloseChatCopyWith(
          _CloseChat value, $Res Function(_CloseChat) then) =
      __$CloseChatCopyWithImpl<$Res>;
}

/// @nodoc
class __$CloseChatCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$CloseChatCopyWith<$Res> {
  __$CloseChatCopyWithImpl(_CloseChat _value, $Res Function(_CloseChat) _then)
      : super(_value, (v) => _then(v as _CloseChat));

  @override
  _CloseChat get _value => super._value as _CloseChat;
}

/// @nodoc

class _$_CloseChat implements _CloseChat {
  const _$_CloseChat();

  @override
  String toString() {
    return 'ChatEvent.closeChat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CloseChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) startNewChat,
    required TResult Function() closeChat,
  }) {
    return closeChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? startNewChat,
    TResult Function()? closeChat,
  }) {
    return closeChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? startNewChat,
    TResult Function()? closeChat,
    required TResult orElse(),
  }) {
    if (closeChat != null) {
      return closeChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartNewChat value) startNewChat,
    required TResult Function(_CloseChat value) closeChat,
  }) {
    return closeChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartNewChat value)? startNewChat,
    TResult Function(_CloseChat value)? closeChat,
  }) {
    return closeChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartNewChat value)? startNewChat,
    TResult Function(_CloseChat value)? closeChat,
    required TResult orElse(),
  }) {
    if (closeChat != null) {
      return closeChat(this);
    }
    return orElse();
  }
}

abstract class _CloseChat implements ChatEvent {
  const factory _CloseChat() = _$_CloseChat;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _ChatOpen chatOpen(Chat chat) {
    return _ChatOpen(
      chat,
    );
  }

  _ChatClosed chatClosed() {
    return const _ChatClosed();
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat) chatOpen,
    required TResult Function() chatClosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Chat chat)? chatOpen,
    TResult Function()? chatClosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat)? chatOpen,
    TResult Function()? chatClosed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatOpen value) chatOpen,
    required TResult Function(_ChatClosed value) chatClosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChatOpen value)? chatOpen,
    TResult Function(_ChatClosed value)? chatClosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatOpen value)? chatOpen,
    TResult Function(_ChatClosed value)? chatClosed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

/// @nodoc
abstract class _$ChatOpenCopyWith<$Res> {
  factory _$ChatOpenCopyWith(_ChatOpen value, $Res Function(_ChatOpen) then) =
      __$ChatOpenCopyWithImpl<$Res>;
  $Res call({Chat chat});

  $ChatCopyWith<$Res> get chat;
}

/// @nodoc
class __$ChatOpenCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ChatOpenCopyWith<$Res> {
  __$ChatOpenCopyWithImpl(_ChatOpen _value, $Res Function(_ChatOpen) _then)
      : super(_value, (v) => _then(v as _ChatOpen));

  @override
  _ChatOpen get _value => super._value as _ChatOpen;

  @override
  $Res call({
    Object? chat = freezed,
  }) {
    return _then(_ChatOpen(
      chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$_ChatOpen implements _ChatOpen {
  const _$_ChatOpen(this.chat);

  @override
  final Chat chat;

  @override
  String toString() {
    return 'ChatState.chatOpen(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatOpen &&
            const DeepCollectionEquality().equals(other.chat, chat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chat));

  @JsonKey(ignore: true)
  @override
  _$ChatOpenCopyWith<_ChatOpen> get copyWith =>
      __$ChatOpenCopyWithImpl<_ChatOpen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat) chatOpen,
    required TResult Function() chatClosed,
  }) {
    return chatOpen(chat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Chat chat)? chatOpen,
    TResult Function()? chatClosed,
  }) {
    return chatOpen?.call(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat)? chatOpen,
    TResult Function()? chatClosed,
    required TResult orElse(),
  }) {
    if (chatOpen != null) {
      return chatOpen(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatOpen value) chatOpen,
    required TResult Function(_ChatClosed value) chatClosed,
  }) {
    return chatOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChatOpen value)? chatOpen,
    TResult Function(_ChatClosed value)? chatClosed,
  }) {
    return chatOpen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatOpen value)? chatOpen,
    TResult Function(_ChatClosed value)? chatClosed,
    required TResult orElse(),
  }) {
    if (chatOpen != null) {
      return chatOpen(this);
    }
    return orElse();
  }
}

abstract class _ChatOpen implements ChatState {
  const factory _ChatOpen(Chat chat) = _$_ChatOpen;

  Chat get chat;
  @JsonKey(ignore: true)
  _$ChatOpenCopyWith<_ChatOpen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChatClosedCopyWith<$Res> {
  factory _$ChatClosedCopyWith(
          _ChatClosed value, $Res Function(_ChatClosed) then) =
      __$ChatClosedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChatClosedCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ChatClosedCopyWith<$Res> {
  __$ChatClosedCopyWithImpl(
      _ChatClosed _value, $Res Function(_ChatClosed) _then)
      : super(_value, (v) => _then(v as _ChatClosed));

  @override
  _ChatClosed get _value => super._value as _ChatClosed;
}

/// @nodoc

class _$_ChatClosed implements _ChatClosed {
  const _$_ChatClosed();

  @override
  String toString() {
    return 'ChatState.chatClosed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ChatClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat) chatOpen,
    required TResult Function() chatClosed,
  }) {
    return chatClosed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Chat chat)? chatOpen,
    TResult Function()? chatClosed,
  }) {
    return chatClosed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat)? chatOpen,
    TResult Function()? chatClosed,
    required TResult orElse(),
  }) {
    if (chatClosed != null) {
      return chatClosed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatOpen value) chatOpen,
    required TResult Function(_ChatClosed value) chatClosed,
  }) {
    return chatClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChatOpen value)? chatOpen,
    TResult Function(_ChatClosed value)? chatClosed,
  }) {
    return chatClosed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatOpen value)? chatOpen,
    TResult Function(_ChatClosed value)? chatClosed,
    required TResult orElse(),
  }) {
    if (chatClosed != null) {
      return chatClosed(this);
    }
    return orElse();
  }
}

abstract class _ChatClosed implements ChatState {
  const factory _ChatClosed() = _$_ChatClosed;
}
