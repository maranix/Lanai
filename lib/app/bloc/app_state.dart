part of 'app_bloc.dart';

enum NetworkStatus {
  connected,

  disconnected,
}

enum AppStatus {
  initial,

  ready,

  failed,
}

/// {@template app_state}
/// AppState description
/// {@endtemplate}
class AppState extends Equatable {
  /// {@macro app_state}
  const AppState({
    this.status = AppStatus.initial,
    this.networkStatus = NetworkStatus.disconnected,
  });

  /// A description for customProperty
  final AppStatus status;

  /// Boolean for checking if App is connected to internet
  final NetworkStatus networkStatus;

  @override
  List<Object> get props => <Object>[
        status,
        networkStatus,
      ];

  /// Creates a copy of the current AppState with property changes
  AppState copyWith({
    AppStatus? status,
    NetworkStatus? networkStatus,
  }) {
    return AppState(
      status: status ?? this.status,
      networkStatus: networkStatus ?? this.networkStatus,
    );
  }
}
