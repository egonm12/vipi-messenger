import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:sandbox/models/chat/chat.dart';
import 'package:sandbox/models/chat_message/chat_message.dart';
import 'package:sandbox/models/user/user.dart';
import 'package:sandbox/repositories/authentication_repository.dart';
import 'package:sandbox/repositories/chat_repository.dart';
import 'package:uuid/uuid.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({
    required this.chatRepository,
    required this.authenticationRepository,
  }) : super(ChatState.chatClosed()) {
    on<_StartNewChat>(_startNewChat);
  }

  final ChatRepository chatRepository;
  final AuthenticationRepository authenticationRepository;

  void _startNewChat(_StartNewChat event, Emitter<ChatState> emit) async {
    try {
      late Chat newChat;
      final chats = await chatRepository.chatsFromCurrentUser();
      print(chats);
      final existingChat = chats?.firstWhereOrNull((chat) {
        print('chat $chat');
        return chat.data().users[event.user.id] != null;
      })?.data();

      print('existingChat ${existingChat}');
      final currentUser = authenticationRepository.currentUser;
      final otherUser = event.user;

      if (existingChat == null) {
        final id = Uuid().v4();

        await chatRepository.createChat(
          Chat(
            id: id,
            users: [currentUser.id, otherUser.id],
            messages: Map<DateTime, ChatMessage>(),
          ),
        );

        newChat =
            await chatRepository.chatSnapshot(id).then((chat) => chat.data()!);
      }

      emit(ChatState.chatOpen(existingChat ?? newChat));
    } catch (e) {
      print(e);
    }
  }
}
