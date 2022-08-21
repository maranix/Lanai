part of 'local_storage_bloc.dart';

enum LocalStorageStatus {
  initial,

  reset,

  restored,
}

class LocalStorageState extends Equatable {
  const LocalStorageState({
    this.status = LocalStorageStatus.initial,
    this.settings = const SettingsModel(),
  });

  final LocalStorageStatus status;

  final SettingsModel settings;

  @override
  List<Object?> get props => [status, settings];

  LocalStorageState copyWith({
    LocalStorageStatus? status,
    SettingsModel? settings,
  }) =>
      LocalStorageState(
        status: status ?? this.status,
        settings: settings ?? this.settings,
      );
}
