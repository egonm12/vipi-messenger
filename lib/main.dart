import 'package:beamer/beamer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/logic/authentication/authentication_bloc.dart';
import 'package:sandbox/repositories/users_repository.dart';
import 'package:sandbox/routing/router.dart';

import 'firebase_options.dart';
import 'repositories/authentication_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;
  BlocOverrides.runZoned(
    () => runApp(
      App(
        authenticationRepository: authenticationRepository,
      ),
    ),
    // blocObserver: AppBlocObserver(),
  );
}

class App extends StatelessWidget {
  const App({
    Key? key,
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(key: key);

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>(
          create: (_) => _authenticationRepository,
        ),
        RepositoryProvider<UsersRepository>(
          create: (_) => UsersRepository(),
        ),
      ],
      child: BlocProvider<AuthenticationBloc>(
        create: (_) => AuthenticationBloc(
          authenticationRepository: _authenticationRepository,
        ),
        child: MaterialApp.router(
          routeInformationParser: BeamerParser(),
          routerDelegate: AppRouter.routerDelegate,
        ),
      ),
    );
  }
}
