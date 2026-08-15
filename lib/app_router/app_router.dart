import 'package:airpods_app/presentation/screens/browse_screen.dart';
import 'package:airpods_app/presentation/screens/cart_screen.dart';
import 'package:airpods_app/presentation/screens/favorites_screen.dart';
import 'package:airpods_app/presentation/screens/home_screen.dart';
import 'package:airpods_app/presentation/screens/main_menu_page.dart';
import 'package:airpods_app/presentation/screens/profile_screen.dart';
import 'package:airpods_app/welcome_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter appRouter = GoRouter(
  initialLocation: NamedRoutes.home.routeName,
  routes: [
    GoRoute(path: NamedRoutes.welcome.routeName, builder: (_, state) => WelcomeScreen()),
    StatefulShellRoute.indexedStack(branches: [
      StatefulShellBranch(routes: [
        GoRoute(path: NamedRoutes.home.routeName, builder: (_, state)=> HomeScreen())
      ]),
      StatefulShellBranch(routes: [
        GoRoute(path: NamedRoutes.browse.routeName, builder: (_, state)=> BrowseScreen())
      ]),
      StatefulShellBranch(routes: [
        GoRoute(path: NamedRoutes.favorites.routeName, builder: (_, state)=> FavoritesScreen())
      ]),
      StatefulShellBranch(routes: [
        GoRoute(path: NamedRoutes.cart.routeName, builder: (_, state)=> CartScreen())
      ]),
      StatefulShellBranch(routes: [
        GoRoute(path: NamedRoutes.profile.routeName, builder: (_, state)=> ProfileScreen())
      ]),
    ],
    builder: (ctx, state, navigationShell) => MainMenuPage(navigationShell: navigationShell)
    )
  ],
);


enum NamedRoutes{
  welcome('/welcome'),
  home('/home'),
  browse('/browse'),
  favorites('/favorites'),
  cart('/cart'),
  profile('/profile'),
  ;
  final String routeName;
  const NamedRoutes(this.routeName);
}