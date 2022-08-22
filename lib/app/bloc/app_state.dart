part of 'app_bloc.dart';

enum AppStatus {
  initial
}

/// {@template app_state}
/// AppState description
/// {@endtemplate}
class AppState extends Equatable {
  /// {@macro app_state}
  const AppState({
    this.status = AppStatus.initial,
  });

  /// A description for customProperty
  final AppStatus status;

  @override
  List<Object> get props => <Object>[status];

  /// Creates a copy of the current AppState with property changes
  AppState copyWith({
    AppStatus? status,
  }) {
    return AppState(
      status: status ?? this.status,
    );
  }
}
