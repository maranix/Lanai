import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'network_event.dart';
part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  /// {@macro theme_bloc}
  NetworkBloc({required Connectivity connectivity})
      : _connectivity = connectivity,
        super(const NetworkState()) {
    on<NetworkSubscribed>(_onNetworkSubscribed);
    on<NetworkStatusUpdate>(_onNetworkStatusUpdate);
  }

  final Connectivity _connectivity;

  StreamSubscription<ConnectivityResult>? _subscription;

  void _onNetworkSubscribed(
    NetworkSubscribed event,
    Emitter<NetworkState> emit,
  ) {
    _subscription?.cancel();

    _subscription = _connectivity.onConnectivityChanged.listen(
      (ConnectivityResult result) => add(
        NetworkStatusUpdate(status: result),
      ),
    );

    emit(
      const NetworkState(status: NetworkStatus.connected),
    );
  }

  void _onNetworkStatusUpdate(
    NetworkStatusUpdate event,
    Emitter<NetworkState> emit,
  ) {
    if (event.status == ConnectivityResult.none) {
      emit(const NetworkState(status: NetworkStatus.disconnected));
    } else {
      emit(const NetworkState(status: NetworkStatus.connected));
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
