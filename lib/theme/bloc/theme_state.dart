part of 'theme_bloc.dart';

enum ThemeStatus {
  initial,

  toggled,
}

/// {@template theme_state}
/// ThemeState description
/// {@endtemplate}
class ThemeState extends Equatable {
  /// {@macro theme_state}
  const ThemeState({
    this.status = ThemeStatus.initial,
    required this.theme,
  });

  /// A description for customProperty
  final ThemeStatus status;

  final ThemeData theme;

  @override
  List<Object> get props => <Object>[status, theme];

  /// Creates a copy of the current ThemeState with property changes
  ThemeState copyWith({
    ThemeStatus? status,
    ThemeData? theme,
  }) {
    return ThemeState(
      status: status ?? this.status,
      theme: theme ?? this.theme,
    );
  }
}
