part of 'app_bloc.dart';

/// {@template app_state}
/// AppState description
/// {@endtemplate}
class AppState extends Equatable {
  /// {@macro app_state}
  const AppState({
    this.status = AppStatus.initial,
    this.networkStatus = NetworkStatus.disconnected,
    this.settings = const AppSettingsModel(theme: ThemeType.light),
  });

  /// A description for customProperty
  final AppStatus status;

  final NetworkStatus networkStatus;

  final AppSettingsModel settings;

  @override
  List<Object> get props => <Object>[
        status,
        networkStatus,
        settings,
      ];

  /// Creates a copy of the current AppState with property changes
  AppState copyWith({
    AppStatus? status,
    NetworkStatus? networkStatus,
    AppSettingsModel? settings,
  }) {
    return AppState(
      status: status ?? this.status,
      networkStatus: networkStatus ?? this.networkStatus,
      settings: settings ?? this.settings,
    );
  }
}
