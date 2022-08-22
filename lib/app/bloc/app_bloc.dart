import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:lanai/app/constants.dart';
import 'package:lanai/app/model/app_settings_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_event.dart';
part 'app_state.dart';

/// {@template app_bloc}
/// AppStates are dispatched on AppEvents.
/// {@endtemplate}
class AppBloc extends Bloc<AppEvent, AppState> {
  /// {@macro app_bloc}
  AppBloc({
    required Connectivity connectivityPlugin,
    required SharedPreferences sharedPreferences,
  })  : _connectivityPlugin = connectivityPlugin,
        _sharedPreferences = sharedPreferences,
        super(const AppState()) {
    on<AppInitial>(_onAppInitial);
    on<AppConnectivityChanged>(_onAppConnectivityChanged);
    on<AppThemeChanged>(_onAppThemeChanged);
    on<AppRestoreSettings>(_onAppRestoreSettings);
  }

  final Connectivity _connectivityPlugin;

  final SharedPreferences _sharedPreferences;

  StreamSubscription<ConnectivityResult>? _networkStreamSubscription;

  SharedPreferences get spInstance => _sharedPreferences;

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

  FutureOr<void> _onAppRestoreSettings(
    AppRestoreSettings event,
    Emitter<AppState> emit,
  ) async {
    /// Check if there is settings available in local storage
    /// If it is not then assign empty string.
    final savedSettings = _sharedPreferences.getString('settings') ?? '';

    /// 1. Serialize and save default settings in local storage so we can update & retrieve it later.
    /// 2. Deserialize saved settings back into an object to restore app state.
    if (savedSettings.isEmpty) {
      final settingsToSave = json.encode(state.settings.toJson());
      await _sharedPreferences.setString('settings', settingsToSave);
    } else {
      final settings = AppSettingsModel.fromJson(json.decode(savedSettings));

      emit(AppState(status: AppStatus.ready, settings: settings));
    }
  }

  void _onAppConnectivityChanged(
    AppConnectivityChanged event,
    Emitter<AppState> emit,
  ) {
    if (event.status == ConnectivityResult.none) {
      emit(const AppState(networkStatus: NetworkStatus.disconnected));
    } else {
      emit(
        AppState(status: state.status, networkStatus: NetworkStatus.connected),
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
        settings:
            state.settings.copyWith(theme: state.settings.theme == ThemeType.light ? ThemeType.dark : ThemeType.light),
      ),
    );
  }

  @override
  Future<void> close() {
    _networkStreamSubscription?.cancel();
    return super.close();
  }
}
