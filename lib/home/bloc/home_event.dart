part of 'home_bloc.dart';

/// {@template home_event}
/// {@endtemplate}
abstract class HomeEvent extends Equatable {
  /// {@macro home_event}
  const HomeEvent();
}

/// {@template home_initial_event}
/// HomeEvent is added to trigger custom logic defined in HomeBloc.
/// {@endtemplate}
class HomeInitial extends HomeEvent {
  /// {@macro home_initial_event}
  const HomeInitial();

  @override
  List<Object> get props => <Object>[];
}
