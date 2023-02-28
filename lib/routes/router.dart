import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lanai/src/home/home.dart';

part 'router.g.dart';

@TypedGoRoute<HomeScreenRoute>(
  path: '/',
)
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
