import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:lanai/app/constants.dart';

part 'app_event.dart';
part 'app_state.dart';

/// {@template app_bloc}
/// AppStates are dispatched on AppEvents.
/// {@endtemplate}
class AppBloc extends Bloc<AppEvent, AppState> {
  /// {@macro app_bloc}
  AppBloc({required Connectivity connectivityPlugin})
      : _connectivityPlugin = connectivityPlugin,
        super(const AppState()) {
    on<AppInitial>(_onAppInitial);
    on<AppConnectivityChanged>(_onAppConnectivityChanged);
    on<AppThemeChanged>(_onAppThemeChanged);
  }

  final Connectivity _connectivityPlugin;

  StreamSubscription<ConnectivityResult>? _networkStreamSubscription;

  void _onAppInitial(
    AppInitial event,
    Emitter<AppState> emit,
  ) {
    _networkStreamSubscription?.cancel();

    _networkStreamSubscription = _connectivityPlugin.onConnectivityChanged.listen(
      (ConnectivityResult result) => add(
        AppConnectivityChanged(status: result),
      ),
    );
  }

  void _onAppConnectivityChanged(
    AppConnectivityChanged event,
    Emitter<AppState> emit,
  ) {
    if (event.status == ConnectivityResult.none) {
      emit(const AppState(networkStatus: NetworkStatus.disconnected));
    } else {
      emit(
        const AppState(status: AppStatus.ready, networkStatus: NetworkStatus.connected),
      );
    }
  }

  void _onAppThemeChanged(
    AppThemeChanged event,
    Emitter<AppState> emit,
  ) {
    emit(
      AppState(
          status: state.status,
          networkStatus: state.networkStatus,
          themeMode: state.themeMode == ThemeType.light ? ThemeType.dark : ThemeType.light),
    );
  }

  @override
  Future<void> close() {
    _networkStreamSubscription?.cancel();
    return super.close();
  }
}
