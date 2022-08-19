import 'package:flutter/material.dart';
import 'package:lanai/photo/photo.dart';
import 'package:pexels_repository/pexels_repository.dart';
import './photo_view.dart';

/// {@template photo_page}
/// A description for PhotoPage
/// {@endtemplate}
class PhotoPage extends StatelessWidget {
  /// {@macro photo_page}
  const PhotoPage({super.key, required this.title, required this.event});

  final String title;

  final PhotoEvent event;

  /// The static route for PhotoPage
  /// Can be directly accessed using
  /// code dart`
  /// Navigator.push(PhotoPage.route());
  /// `
  static Route<PhotoPage> route({required String title, required PhotoEvent event}) {
    return MaterialPageRoute<PhotoPage>(
      builder: (_) => PhotoPage(
        title: title,
        event: event,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhotoBloc>(
      create: (BuildContext context) => PhotoBloc(
        pexRepo: PexelsRepository(
          client: Client(),
        ),
      )..add(event),
      child: PhotoView(title: title),
    );
  }
}
