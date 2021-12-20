import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart' hide EditableUserDisplayName;
import 'package:sandbox/logic/authentication/authentication_bloc.dart';
import 'package:sandbox/repositories/authentication_repository.dart';

import 'widgets/editable_user_display_name.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) => state.maybeWhen(
        authenticated: (user) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Profile'),
            actions: [
              IconButton(
                  onPressed:
                      RepositoryProvider.of<AuthenticationRepository>(context)
                          .signOut,
                  icon: Icon(
                    Icons.logout_outlined,
                  ))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Column(
              children: [
                Align(
                  child: UserAvatar(),
                ),
                const SizedBox(height: 16),
                Align(child: EditableUserDisplayName()),
              ],
            ),
          ),
        ),
        orElse: () => Center(child: const CircularProgressIndicator()),
      ),
    );
  }
}
