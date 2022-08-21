part of 'settings_bloc.dart';

enum SettingsStatus {
  initial,
  updated,
}

/// {@template settings_state}
/// SettingsState description
/// {@endtemplate}
class SettingsState extends Equatable {
  /// {@macro settings_state}
  const SettingsState({
    this.status = SettingsStatus.initial,
    this.settings = const SettingsModel(),
  });

  /// A description for customProperty
  final SettingsStatus status;

  final SettingsModel settings;
  @override
  List<Object> get props => <Object>[status, settings];

  /// Creates a copy of the current SettingsState with property changes
  SettingsState copyWith({
    SettingsStatus? status,
    SettingsModel? settings,
  }) {
    return SettingsState(
      status: status ?? this.status,
      settings: settings ?? this.settings,
    );
  }
}
