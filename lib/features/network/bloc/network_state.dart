part of 'network_bloc.dart';

enum NetworkStatus {
  initial,

  connected,

  disconnected,
}

/// {@template theme_state}
/// NetworkState description
/// {@endtemplate}
class NetworkState extends Equatable {
  /// {@macro theme_state}
  const NetworkState({
    this.status = NetworkStatus.initial,
  });

  /// A description for customProperty
  final NetworkStatus status;

  @override
  List<Object> get props => <Object>[status];

  /// Creates a copy of the current NetworkState with property changes
  NetworkState copyWith({
    NetworkStatus? status,
  }) {
    return NetworkState(
      status: status ?? this.status,
    );
  }
}
