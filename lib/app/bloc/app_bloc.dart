import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_event.dart';
part 'app_state.dart';

/// {@template app_bloc}
/// AppStates are dispatched on AppEvents.
/// {@endtemplate}
class AppBloc extends Bloc<AppEvent, AppState> {
  /// {@macro app_bloc}
  AppBloc() : super(const AppState()) {
    on<AppInitial>(_onAppInitial);
  }

  FutureOr<void> _onAppInitial (
    AppInitial event,
    Emitter<AppState> emit,
  ) {
    // TODO: Add logic and emit state here
  }
}
