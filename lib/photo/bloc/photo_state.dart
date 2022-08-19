part of 'photo_bloc.dart';

enum PhotoStatus {
  initial
}

/// {@template photo_state}
/// PhotoState description
/// {@endtemplate}
class PhotoState extends Equatable {
  /// {@macro photo_state}
  const PhotoState({
    this.status = PhotoStatus.initial,
  });

  /// A description for customProperty
  final PhotoStatus status;

  @override
  List<Object> get props => <Object>[status];

  /// Creates a copy of the current PhotoState with property changes
  PhotoState copyWith({
    PhotoStatus? status,
  }) {
    return PhotoState(
      status: status ?? this.status,
    );
  }
}
