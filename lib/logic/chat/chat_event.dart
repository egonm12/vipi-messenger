part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.startNewChat(User user) = _StartNewChat;
  const factory ChatEvent.closeChat() = _CloseChat;
}
