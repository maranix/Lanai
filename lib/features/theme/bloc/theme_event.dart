part of 'theme_bloc.dart';

/// {@template theme_event}
/// {@endtemplate}
abstract class ThemeEvent extends Equatable {
  /// {@macro theme_event}
  const ThemeEvent();
}

/// {@template theme_event}
/// ThemeEvent is added to trigger custom logic defined in ThemeBloc.
/// {@endtemplate}
class ThemeToggled extends ThemeEvent {
  /// {@macro theme_event}
  const ThemeToggled();

  @override
  List<Object> get props => <Object>[];
}
