part of 'home_bloc.dart';

enum HomeStatus {
  initial
}

/// {@template home_state}
/// HomeState description
/// {@endtemplate}
class HomeState extends Equatable {
  /// {@macro home_state}
  const HomeState({
    this.status = HomeStatus.initial,
  });

  /// A description for customProperty
  final HomeStatus status;

  @override
  List<Object> get props => <Object>[status];

  /// Creates a copy of the current HomeState with property changes
  HomeState copyWith({
    HomeStatus? status,
  }) {
    return HomeState(
      status: status ?? this.status,
    );
  }
}
