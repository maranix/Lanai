part of 'settings_bloc.dart';

enum SettingsStatus {
  initial
}

/// {@template settings_state}
/// SettingsState description
/// {@endtemplate}
class SettingsState extends Equatable {
  /// {@macro settings_state}
  const SettingsState({
    this.status = SettingsStatus.initial,
  });

  /// A description for customProperty
  final SettingsStatus status;

  @override
  List<Object> get props => <Object>[status];

  /// Creates a copy of the current SettingsState with property changes
  SettingsState copyWith({
    SettingsStatus? status,
  }) {
    return SettingsState(
      status: status ?? this.status,
    );
  }
}
