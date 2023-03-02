import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lanai/src/photos/photos.dart';

part 'router.g.dart';

@TypedGoRoute<PhotosScreenRoute>(
  path: '/photos',
)
class PhotosScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PhotosPage();
  }
}
