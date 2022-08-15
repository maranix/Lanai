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

/// {@template home_loaded_event}
/// HomeEvent is added to trigger custom logic defined in HomeBloc.
/// {@endtemplate}
class HomeLoaded extends HomeEvent {
  /// {@macro home_initial_event}
  const HomeLoaded();

  @override
  List<Object> get props => <Object>[];
}
