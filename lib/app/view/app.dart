import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lanai/l10n/l10n.dart';
import 'package:lanai/routes/routes.dart';
import 'package:lanai/src/theme/bloc/bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(),
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = context.watch<ThemeBloc>().state.themeData;

    final goRouter = GoRouter(
      routes: $appRoutes,
      initialLocation: HomeScreenRoute().location,
    );

    return MaterialApp.router(
      routerConfig: goRouter,
      theme: themeData,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
