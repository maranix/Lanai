import 'package:flutter/material.dart';
import 'package:lanai/photo/photo.dart';
import './photo_view.dart';

/// {@template photo_page}
/// A description for PhotoPage
/// {@endtemplate}
class PhotoPage extends StatelessWidget {
  /// {@macro photo_page}
  const PhotoPage({super.key, required this.title});

  final String title;

  /// The static route for PhotoPage
  /// Can be directly accessed using
  /// code dart`
  /// Navigator.push(PhotoPage.route());
  /// `
  static Route<PhotoPage> route({required String title}) {
    return MaterialPageRoute<PhotoPage>(
      builder: (_) => PhotoPage(
        title: title,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PhotoBloc>(
      create: (BuildContext context) => PhotoBloc(),
      child: PhotoView(title: title),
    );
  }
}
