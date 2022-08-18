import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'photo_event.dart';
part 'photo_state.dart';

/// {@template photo_bloc}
/// PhotoStates are dispatched on PhotoEvents.
/// {@endtemplate}
class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  /// {@macro photo_bloc}
  PhotoBloc() : super(const PhotoState()) {
    on<PhotoInitial>(_onPhotoInitial);
  }

  FutureOr<void> _onPhotoInitial (
    PhotoInitial event,
    Emitter<PhotoState> emit,
  ) {
    // TODO: Add logic and emit state here
  }
}
