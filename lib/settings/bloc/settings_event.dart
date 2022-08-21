part of 'settings_bloc.dart';

/// {@template settings_event}
/// {@endtemplate}
abstract class SettingsEvent extends Equatable {
  /// {@macro settings_event}
  const SettingsEvent();
}

/// {@template settings_initial_event}
/// SettingsEvent is added to trigger custom logic defined in SettingsBloc.
/// {@endtemplate}
class SettingsInitial extends SettingsEvent {
  /// {@macro settings_initial_event}
  const SettingsInitial();

  @override
  List<Object> get props => <Object>[];
}

class SourceChanged extends SettingsEvent {
  /// {@macro settings_initial_event}
  const SourceChanged({required this.src});

  final String src;

  @override
  List<Object> get props => <Object>[src];
}
