part of 'app_bloc.dart';

/// {@template app_event}
/// {@endtemplate}
abstract class AppEvent extends Equatable {
  /// {@macro app_event}
  const AppEvent();
}

/// {@template app_initial_event}
/// AppEvent is added to trigger custom logic defined in AppBloc.
/// {@endtemplate}
class AppInitial extends AppEvent {
  /// {@macro app_initial_event}
  const AppInitial();

  @override
  List<Object> get props => <Object>[];
}

class AppConnectivityChanged extends AppEvent {
  /// {@macro app_initial_event}
  const AppConnectivityChanged({required this.status});

  final ConnectivityResult status;

  @override
  List<Object> get props => <Object>[status];
}

class AppThemeChanged extends AppEvent {
  /// {@macro app_initial_event}
  const AppThemeChanged();

  @override
  List<Object> get props => <Object>[];
}
