import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'liked_event.dart';
part 'liked_state.dart';

/// {@template liked_bloc}
/// LikedStates are dispatched on LikedEvents.
/// {@endtemplate}
class LikedBloc extends Bloc<LikedEvent, LikedState> {
  /// {@macro liked_bloc}
  LikedBloc() : super(const LikedState()) {
    on<LikedInitial>(_onLikedInitial);
  }

  FutureOr<void> _onLikedInitial (
    LikedInitial event,
    Emitter<LikedState> emit,
  ) {
    // TODO: Add logic and emit state here
  }
}
