part of 'app_bloc.dart';

/// {@template app_state}
/// AppState description
/// {@endtemplate}
class AppState extends Equatable {
  /// {@macro app_state}
  const AppState({
    this.status = AppStatus.initial,
    this.networkStatus = NetworkStatus.disconnected,
    this.themeMode = ThemeType.light,
  });

  /// A description for customProperty
  final AppStatus status;

  final NetworkStatus networkStatus;

  final ThemeType themeMode;

  @override
  List<Object> get props => <Object>[
        status,
        networkStatus,
        themeMode,
      ];

  /// Creates a copy of the current AppState with property changes
  AppState copyWith({
    AppStatus? status,
    NetworkStatus? networkStatus,
    ThemeType? themeMode,
  }) {
    return AppState(
      status: status ?? this.status,
      networkStatus: networkStatus ?? this.networkStatus,
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
