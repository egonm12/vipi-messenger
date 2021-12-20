import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart' as firebase_auth;
import 'package:flutterfire_ui/auth.dart' hide SignInScreen;
import 'package:sandbox/logic/authentication/authentication_bloc.dart';
import 'package:sandbox/repositories/users_repository.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return firebase_auth.SignInScreen(
      providerConfigs: [
        EmailProviderConfiguration(),
      ],
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) async {
          BlocProvider.of<AuthenticationBloc>(context).state.maybeWhen(
                authenticated: (user) async {
                  final _userRepository =
                      RepositoryProvider.of<UsersRepository>(context);
                  final _userSnapshot =
                      await _userRepository.userSnapshot(user.id);

                  if (!_userSnapshot.exists) {
                    _userRepository.addUser(user);
                  }
                },
                orElse: () => null,
              );
        }),
      ],
    );
  }
}
