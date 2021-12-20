import 'package:beamer/beamer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:sandbox/logic/authentication/authentication_bloc.dart';
import 'package:sandbox/ui/screens/chats_overview/chats_overview_screen.dart';
import 'package:sandbox/ui/screens/contacts_overview/contacts_overview_screen.dart';
import 'package:sandbox/ui/screens/profile/profile_screen.dart';
import 'package:sandbox/ui/screens/sign_in/sign_in_screen.dart';

abstract class AppRouter {
  static const loginRoute = '/login';
  static const profileRoute = '/profile';
  static const chatsOverviewRoute = '/chats';
  static const contactsOverviewRoute = '/contacts';

  static final List<BeamGuard> guards = [
    BeamGuard(
      pathPatterns: [loginRoute],
      guardNonMatching: true,
      check: (context, _) => context.select(
        (AuthenticationBloc auth) => auth.state.maybeWhen(
          unauthenticated: () => false,
          orElse: () => true,
        ),
      ),
      beamToNamed: (_, __) => loginRoute,
    ),
    BeamGuard(
      pathPatterns: [loginRoute],
      check: (context, _) => context.select(
        (AuthenticationBloc auth) => auth.state.maybeWhen(
          authenticated: (_) => false,
          orElse: () => true,
        ),
      ),
      beamToNamed: (_, __) => chatsOverviewRoute,
    )
  ];

  static final BeamerDelegate routerDelegate = BeamerDelegate(
    guards: guards,
    initialPath: loginRoute,
    locationBuilder: RoutesLocationBuilder(
      routes: {
        loginRoute: (_, __, ___) => const SignInScreen(),
        profileRoute: (_, __, ___) => const ProfileScreen(),
        chatsOverviewRoute: (_, __, ___) => const ChatOverviewScreen(),
        contactsOverviewRoute: (_, __, ___) => const ContactsOverviewScreen(),
      },
    ),
  );
}
