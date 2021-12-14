import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:provider/src/provider.dart';

import 'logic/authentication_bloc.dart';

class AuthApp extends StatelessWidget {
  const AuthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const providerConfigs = [EmailProviderConfiguration()];

    return MaterialApp(
      initialRoute: context.select(
        (AuthenticationBloc authBloc) => authBloc.state.when(
          authenticated: (_) => '/profile',
          unauthenticated: () => '/sign-in',
        ),
      ),
      // context.select((AuthenticationBloc bloc) => bloc.state.when(authenticated: (_) => , unauthenticated: unauthenticated) ? '/sign-in' : '/profile',
      routes: {
        '/sign-in': (context) {
          return SignInScreen(
            actions: [
              AuthStateChangeAction<SignedIn>((context, state) {
                Navigator.pushReplacementNamed(context, '/profile');
              }),
            ],
            providerConfigs: providerConfigs,
          );
        },
        '/profile': (context) {
          return ProfileScreen(
            providerConfigs: providerConfigs,
            actions: [
              SignedOutAction((context) {
                Navigator.pushReplacementNamed(context, '/sign-in');
              }),
            ],
          );
        },
      },
    );
  }
}
