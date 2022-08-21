import 'dart:async';
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:lanai/settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_event.dart';
part 'settings_state.dart';

/// {@template settings_bloc}
/// SettingsStates are dispatched on SettingsEvents.
/// {@endtemplate}
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  /// {@macro settings_bloc}
  SettingsBloc({
    required SettingsModel settingsModel,
    required SharedPreferences plugin,
  })  : _settingsModel = settingsModel,
        _plugin = plugin,
        super(const SettingsState()) {
    on<SettingsInitial>(_onSettingsInitial);
    on<SourceChanged>(_onSourceChanged);
  }

  final SettingsModel _settingsModel;

  final SharedPreferences _plugin;

  FutureOr<void> _onSettingsInitial(
    SettingsInitial event,
    Emitter<SettingsState> emit,
  ) {
    emit(
      SettingsState(status: SettingsStatus.initial, settings: _settingsModel),
    );
  }

  FutureOr<void> _onSourceChanged(
    SourceChanged event,
    Emitter<SettingsState> emit,
  ) async {
    emit(
      SettingsState(
        status: SettingsStatus.updated,
        settings: _settingsModel.copyWith(source: event.src),
      ),
    );

    final settingsToSave = json.encode(state.settings.toJson());

    await _plugin.setString("settings", settingsToSave);
  }
}
