import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';
import 'package:lanai/app/constants.dart';
import 'package:lanai/home/home.dart';

/// {@template home_view}
/// Define your HomePage body/ui structure here.
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            if (state.settings.source == ImageSource.pexels) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Pexels'),
                  ToggleThemeButton(),
                  SourceDropDownMenu(),
                ],
              );
            }

            if (state.settings.source == ImageSource.pixabay) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Pixabay'),
                  ToggleThemeButton(),
                  SourceDropDownMenu(),
                ],
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
