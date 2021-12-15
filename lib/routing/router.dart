import 'package:beamer/beamer.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:provider/src/provider.dart';
import 'package:sandbox/modules/authentication/logic/authentication_bloc.dart';

abstract class AppRouter {
  static const loginRoute = '/login';
  static const profileRoute = '/profile';

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
      beamToNamed: (_, __) => profileRoute,
    )
  ];

  static final BeamerDelegate routerDelegate = BeamerDelegate(
    guards: guards,
    locationBuilder: RoutesLocationBuilder(
      routes: {
        loginRoute: (_, __, ___) => SignInScreen(
              providerConfigs: [EmailProviderConfiguration()],
            ),
        profileRoute: (_, __, ___) => ProfileScreen(
              providerConfigs: [EmailProviderConfiguration()],
            ),
      },
    ),
  );
}
