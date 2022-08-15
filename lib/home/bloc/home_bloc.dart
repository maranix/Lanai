import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lanai/home/home.dart';
import 'package:pexels_repository/pexels_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

/// {@template home_bloc}
/// HomeStates are dispatched on HomeEvents.
/// {@endtemplate}
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// {@macro home_bloc}
  HomeBloc({required PexelsRepository repository})
      : _repository = repository,
        super(const HomeState()) {
    on<HomeInitial>(_onHomeInitial);
    on<HomeLoaded>(_onHomeLoaded);
  }

  final PexelsRepository _repository;

  void _onHomeInitial(
    HomeInitial event,
    Emitter<HomeState> emit,
  ) {}

  FutureOr<void> _onHomeLoaded(
    HomeLoaded event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState(status: HomeStatus.loading));

    final curated = await _repository.getCuratedPhotos();

    if (curated.photos.isNotEmpty) {
      emit(HomeState(status: HomeStatus.loaded, curated: curated));
    } else {
      emit(const HomeState(status: HomeStatus.failed));
    }
  }
}
