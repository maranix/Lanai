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
    on<HomeFetched>(_onHomeFetched);
  }

  FutureOr<void> _onHomeFetched(
    HomeFetched event,
    Emitter<HomeState> emit,
  ) async {}
}
