import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lanai/home/home.dart';
import 'package:pexels_repository/pexels_repository.dart';

import './home_view.dart';

/// {@template home_page}
/// A description for HomePage
/// {@endtemplate}
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

  /// The static route for HomePage
  /// Can be directly accessed using
  /// code dart`
  /// Navigator.push(HomePage.route());
  /// `
  static Route<HomePage> route() {
    return MaterialPageRoute<HomePage>(
      builder: (_) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => PexelsRepository(client: http.Client()),
      child: BlocProvider<HomeBloc>(
        create: (BuildContext context) =>
            HomeBloc(repository: context.read<PexelsRepository>()),
        child: const HomeView(),
      ),
    );
  }
}
