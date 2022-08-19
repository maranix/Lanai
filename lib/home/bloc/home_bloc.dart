import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pexels_repository/pexels_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

/// {@template home_bloc}
/// HomeStates are dispatched on HomeEvents.
/// {@endtemplate}
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// {@macro home_bloc}
  HomeBloc({required PexelsRepository pexRepo})
      : _pexRepo = pexRepo,
        super(const HomeState()) {
    on<HomeFetched>(_onHomeFetched);
  }

  final PexelsRepository _pexRepo;

  FutureOr<void> _onHomeFetched(
    HomeFetched event,
    Emitter<HomeState> emit,
  ) async {
    final data = await _pexRepo.getCuratedPhotos();

    if (data.photos.isNotEmpty) {
      emit(HomeState(status: HomeStatus.fetched, curated: data));
    } else {
      emit(
        const HomeState(status: HomeStatus.failed),
      );
    }
  }
}
