part of 'photo_bloc.dart';

enum PhotoStatus {
  initial,

  loading,

  fetched,

  failed,
}

/// {@template photo_state}
/// PhotoState description
/// {@endtemplate}
class PhotoState extends Equatable {
  /// {@macro photo_state}
  const PhotoState({
    this.status = PhotoStatus.initial,
    this.data = const PexelsPhotoList(photos: []),
  });

  /// A description for customProperty
  final PhotoStatus status;

  final PexelsPhotoList data;

  @override
  List<Object> get props => <Object>[status, data];

  /// Creates a copy of the current PhotoState with property changes
  PhotoState copyWith({
    PhotoStatus? status,
    PexelsPhotoList? data,
  }) {
    return PhotoState(
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }
}
