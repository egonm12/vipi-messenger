import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sandbox/models/chat_message/chat_message.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  /// {@macro chat}
  const Chat._();

  /// {@macro chat}
  const factory Chat({
    required String id,
    required List<String> users,
    required Map<DateTime, ChatMessage> messages,
  }) = _Chat;

  /// Convenience getter to determine whether the chat is a group chat.
  bool get isGroupChat => this.users.length > 2;

  /// Convenience getter to determine whether the chat is a private chat.
  bool get isPrivateChat => this.users.length == 2;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
