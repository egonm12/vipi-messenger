import 'package:beamer/beamer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/logic/chat/chat_bloc.dart';
import 'package:sandbox/models/user/user.dart';
import 'package:sandbox/repositories/authentication_repository.dart';
import 'package:sandbox/repositories/users_repository.dart';

class ChatWindowScreen extends StatelessWidget {
  ChatWindowScreen({required this.chatId, Key? key}) : super(key: key);

  final String chatId;

  late final UsersRepository _usersRepository;

  /// returns the [User]'s model for each user that is referenced in the chat
  Future<List<DocumentSnapshot<User>>> _fetchChatUsers(
      BuildContext context, List<String> users) async {
    final List<DocumentSnapshot<User>> _users = [];
    for (final userId in users) {
      _users.add(await _usersRepository.userSnapshot(userId));
    }

    return _users;
  }

  @override
  Widget build(BuildContext context) {
    final User _currentUser =
        RepositoryProvider.of<AuthenticationRepository>(context).currentUser;

    _usersRepository = RepositoryProvider.of<UsersRepository>(context);

    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) => state.when(
        chatOpen: (chat) {
          return FutureBuilder(
              future: _fetchChatUsers(context, chat.users),
              builder: (BuildContext context,
                  AsyncSnapshot<List<DocumentSnapshot<User>>> snapshot) {
                if (snapshot.hasData) {
                  final otherUsers = snapshot.data!
                      .where((user) => user.data()?.id != _currentUser.id)
                      .toList();

                  print(otherUsers);
                  return Scaffold(
                    appBar: AppBar(
                      leading: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: Beamer.of(context).beamBack,
                      ),
                      title: Text(
                        chat.isPrivateChat
                            ? otherUsers[0].data()!.name!
                            : otherUsers
                                .map(
                                  (user) => user.data()!.name!,
                                )
                                .join(', '),
                      ),
                    ),
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              });
        },
        chatClosed: () => Container(),
      ),
    );
  }
}
