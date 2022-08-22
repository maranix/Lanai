import 'package:flutter/material.dart';
import 'package:lanai/app/app.dart';
import 'package:lanai/home/view/home_page.dart';

/// {@template app_view}
/// Define your AppPage body/ui structure here.
/// {@endtemplate}
class AppView extends StatelessWidget {
  /// {@macro app_view}
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state.status == AppStatus.ready && state.networkStatus == NetworkStatus.connected) {
            return const HomePage();
          } else if (state.networkStatus == NetworkStatus.disconnected) {
            return const Scaffold(
              body: Center(
                child: Text('Disconnect'),
              ),
            );
          }

          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        },
      ),
    );
  }
}
