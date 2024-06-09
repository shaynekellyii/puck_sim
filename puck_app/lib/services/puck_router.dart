import 'package:go_router/go_router.dart';
import 'package:puck_app/features/features.dart';

final puckRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CreateTeamScreen(),
    ),
  ],
);
