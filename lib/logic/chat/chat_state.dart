part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.chatOpen(Chat chat) = _ChatOpen;
  const factory ChatState.chatClosed() = _ChatClosed;
}
