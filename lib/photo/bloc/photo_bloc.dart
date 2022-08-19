import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pexels_repository/pexels_repository.dart';

part 'photo_event.dart';
part 'photo_state.dart';

/// {@template photo_bloc}
/// PhotoStates are dispatched on PhotoEvents.
/// {@endtemplate}
class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  /// {@macro photo_bloc}
  PhotoBloc({required PexelsRepository pexRepo})
      : _pexRepo = pexRepo,
        super(const PhotoState()) {
    on<CuratedPhotoFetched>(_onCuratedPhotoFetched);
    on<PexelsPhotoSearched>(_onPexelsPhotoSearched);
  }

  final PexelsRepository _pexRepo;

  FutureOr<void> _onCuratedPhotoFetched(
    CuratedPhotoFetched event,
    Emitter<PhotoState> emit,
  ) async {
    emit(
      const PhotoState(
        status: PhotoStatus.loading,
        data: PexelsPhotoList(photos: []),
      ),
    );

    final data = await _pexRepo.getCuratedPhotos();

    if (data.photos.isNotEmpty) {
      emit(PhotoState(status: PhotoStatus.fetched, data: data));
    } else {
      emit(const PhotoState(status: PhotoStatus.failed));
    }
  }

  FutureOr<void> _onPexelsPhotoSearched(
    PexelsPhotoSearched event,
    Emitter<PhotoState> emit,
  ) async {
    emit(
      const PhotoState(
        status: PhotoStatus.loading,
        data: PexelsPhotoList(photos: []),
      ),
    );

    final data = await _pexRepo.getPhotosByQuery(query: event.query);

    if (data.photos.isNotEmpty) {
      emit(PhotoState(status: PhotoStatus.fetched, data: data));
    } else {
      emit(const PhotoState(status: PhotoStatus.failed));
    }
  }
}
