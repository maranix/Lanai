import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_event.dart';
part 'settings_state.dart';

/// {@template settings_bloc}
/// SettingsStates are dispatched on SettingsEvents.
/// {@endtemplate}
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  /// {@macro settings_bloc}
  SettingsBloc() : super(const SettingsState()) {
    on<SettingsInitial>(_onSettingsInitial);
  }

  FutureOr<void> _onSettingsInitial (
    SettingsInitial event,
    Emitter<SettingsState> emit,
  ) {
    // TODO: Add logic and emit state here
  }
}
