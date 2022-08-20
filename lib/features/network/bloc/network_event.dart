part of 'network_bloc.dart';

/// {@template theme_event}
/// {@endtemplate}
abstract class NetworkEvent extends Equatable {
  /// {@macro theme_event}
  const NetworkEvent();
}

/// {@template theme_event}
/// NetworkEvent is added to trigger custom logic defined in NetworkBloc.
/// {@endtemplate}
class NetworkSubscribed extends NetworkEvent {
  /// {@macro theme_event}
  const NetworkSubscribed();

  @override
  List<Object> get props => <Object>[];
}

class NetworkStatusUpdate extends NetworkEvent {
  /// {@macro theme_event}
  const NetworkStatusUpdate({required this.status});

  final ConnectivityResult status;

  @override
  List<Object> get props => <Object>[status];
}
