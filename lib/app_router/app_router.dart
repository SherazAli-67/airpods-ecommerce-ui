import 'package:airpods_app/welcome_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter appRouter = GoRouter(
  initialLocation: NamedRoutes.welcome.routeName,
  routes: [
    GoRoute(path: NamedRoutes.welcome.routeName, builder: (_, state) => WelcomeScreen())
  ],
);


enum NamedRoutes{
  welcome('/welcome');
  final String routeName;
  const NamedRoutes(this.routeName);
}