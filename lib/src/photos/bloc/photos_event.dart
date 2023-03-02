part of 'photos_bloc.dart';

abstract class PhotosEvent extends Equatable {
  const PhotosEvent();

  @override
  List<Object> get props => [];
}

class PhotosInitialized extends PhotosEvent {
  const PhotosInitialized();

  @override
  List<Object> get props => [];
}
