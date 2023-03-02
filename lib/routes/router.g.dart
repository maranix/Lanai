// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $photosScreenRoute,
    ];

GoRoute get $photosScreenRoute => GoRouteData.$route(
      path: '/photos',
      factory: $PhotosScreenRouteExtension._fromState,
    );

extension $PhotosScreenRouteExtension on PhotosScreenRoute {
  static PhotosScreenRoute _fromState(GoRouterState state) =>
      PhotosScreenRoute();

  String get location => GoRouteData.$location(
        '/photos',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
