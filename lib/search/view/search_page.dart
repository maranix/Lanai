import 'package:flutter/material.dart';
import 'package:lanai/search/search.dart';
import './search_view.dart';

/// {@template search_page}
/// A description for SearchPage
/// {@endtemplate}
class SearchPage extends StatelessWidget {
  /// {@macro search_page}
  const SearchPage({super.key});

  /// The static route for SearchPage
  /// Can be directly accessed using
  /// code dart`
  /// Navigator.push(SearchPage.route());
  /// `
  static Route<SearchPage> route() {
    return MaterialPageRoute<SearchPage>(
      builder: (_) => const SearchPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (BuildContext context) => SearchBloc(),
      child: const SearchView(),
    );
  }
}
