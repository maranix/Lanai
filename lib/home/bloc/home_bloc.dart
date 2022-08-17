import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

/// {@template home_bloc}
/// HomeStates are dispatched on HomeEvents.
/// {@endtemplate}
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// {@macro home_bloc}
  HomeBloc() : super(const HomeState()) {
    on<HomeInitial>(_onHomeInitial);
  }

  FutureOr<void> _onHomeInitial (
    HomeInitial event,
    Emitter<HomeState> emit,
  ) {
    // TODO: Add logic and emit state here
  }
}
