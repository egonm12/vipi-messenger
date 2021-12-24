import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/logic/chat/chat_bloc.dart';
import 'package:sandbox/logic/contacts/contacts_bloc.dart';
import 'package:sandbox/models/user/user.dart';
import 'package:sandbox/repositories/authentication_repository.dart';
import 'package:sandbox/repositories/users_repository.dart';
import 'package:sandbox/routing/router.dart';
import 'package:sandbox/ui/widgets/user_avatar.dart';

class ContactsOverviewScreen extends StatefulWidget {
  const ContactsOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ContactsOverviewScreen> createState() => _ContactsOverviewScreenState();
}

class _ContactsOverviewScreenState extends State<ContactsOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ContactsBloc(
        usersRepository: RepositoryProvider.of<UsersRepository>(context),
        authenticationRepository:
            RepositoryProvider.of<AuthenticationRepository>(context),
      )..add(ContactsEvent.fetchContacts()),
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Beamer.of(context).beamBack(),
            ),
            title: const Text('Choose contact')),
        body: BlocListener<ChatBloc, ChatState>(
          listener: (context, state) => state.maybeWhen(
            chatOpen: (chat) => Beamer.of(context)
                .beamToNamed('${AppRouter.chatsOverviewRoute}/${chat.id}'),
            orElse: () => null,
          ),
          child: BlocBuilder<ContactsBloc, ContactsState>(
              builder: (_, state) => state.maybeWhen(
                    inProgress: () =>
                        Center(child: const CircularProgressIndicator()),
                    success: (users) => ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        final User contact = users[index].data();

                        return ListTile(
                          onTap: () => BlocProvider.of<ChatBloc>(context).add(
                            ChatEvent.startNewChat(contact),
                          ),
                          leading: UserAvatar(
                            photoUrl: contact.photo,
                            size: 60,
                          ),
                          title: Text(contact.name ?? ''),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 8,
                          ),
                        );
                      },
                    ),
                    error: () => Text('Something went wrong...'),
                    orElse: () => Container(),
                  )),
        ),
      ),
    );
  }
}
