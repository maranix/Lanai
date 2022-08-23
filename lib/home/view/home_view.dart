import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';
import 'package:lanai/home/home.dart';
import 'pexels_body.dart';
import 'pixabay_body.dart';

/// {@template home_view}
/// Define your HomePage body/ui structure here.
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final title = context.watch<AppBloc>().state.settings.source;

    return Scaffold(
      appBar: AppBar(
        title: Text(title.name),
        actions: const [
          MoreVertButton(),
        ],
      ),
      body: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state.settings.source == ImageSource.pexels) {
            return const PexelsBody();
          }

          if (state.settings.source == ImageSource.pixabay) {
            return const PixabayBody();
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
