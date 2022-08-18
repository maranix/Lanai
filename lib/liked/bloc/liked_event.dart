part of 'liked_bloc.dart';

/// {@template liked_event}
/// {@endtemplate}
abstract class LikedEvent extends Equatable {
  /// {@macro liked_event}
  const LikedEvent();
}

/// {@template liked_initial_event}
/// LikedEvent is added to trigger custom logic defined in LikedBloc.
/// {@endtemplate}
class LikedInitial extends LikedEvent {
  /// {@macro liked_initial_event}
  const LikedInitial();

  @override
  List<Object> get props => <Object>[];
}
