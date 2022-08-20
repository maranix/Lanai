import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:lanai/features/network/bloc/network_bloc.dart';
import 'package:lanai/features/theme/my_themes.dart';
import 'package:lanai/features/theme/theme.dart';
import 'package:lanai/home/home.dart';

class LanaiApp extends StatelessWidget {
  const LanaiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeBloc(
            theme: MyThemes(),
          ),
        ),
        BlocProvider(
          create: (_) => NetworkBloc(
            connectivity: Connectivity(),
          )..add(const NetworkSubscribed()),
        )
      ],
      child: const LanaiAppView(),
    );
  }
}

class LanaiAppView extends StatelessWidget {
  const LanaiAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) => MaterialApp(
        theme: state.theme,
        home: BlocBuilder<NetworkBloc, NetworkState>(
          builder: (context, state) {
            if (state.status == NetworkStatus.disconnected) {
              return Container();
            }

            if (state.status == NetworkStatus.initial) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }

            return const HomePage();
          },
        ),
      ),
    );
  }
}
