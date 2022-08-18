part of 'liked_bloc.dart';

enum LikedStatus {
  initial
}

/// {@template liked_state}
/// LikedState description
/// {@endtemplate}
class LikedState extends Equatable {
  /// {@macro liked_state}
  const LikedState({
    this.status = LikedStatus.initial,
  });

  /// A description for customProperty
  final LikedStatus status;

  @override
  List<Object> get props => <Object>[status];

  /// Creates a copy of the current LikedState with property changes
  LikedState copyWith({
    LikedStatus? status,
  }) {
    return LikedState(
      status: status ?? this.status,
    );
  }
}
