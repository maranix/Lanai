import 'dart:async';
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:lanai/settings/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'local_storage_event.dart';
part 'local_storage_state.dart';

class LocalStorageBloc extends Bloc<LocalStorageEvent, LocalStorageState> {
  LocalStorageBloc({
    required SharedPreferences plugin,
  })  : _plugin = plugin,
        super(const LocalStorageState()) {
    on<SettingsRestore>(_onSettingsRestore);
  }

  final SharedPreferences _plugin;

  SharedPreferences get spInstance => _plugin;

  FutureOr<void> _onSettingsRestore(
    SettingsRestore event,
    Emitter<LocalStorageState> emit,
  ) {
    final savedSettings = _plugin.getString("settings");

    if (savedSettings != null) {
      final settings = SettingsModel.fromJson(json.decode(savedSettings));
      emit(
        LocalStorageState(
          status: LocalStorageStatus.restored,
          settings: settings,
        ),
      );
    } else {
      emit(
        LocalStorageState(
          status: LocalStorageStatus.reset,
          settings: state.settings,
        ),
      );
    }
  }
}
