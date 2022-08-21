part of 'local_storage_bloc.dart';

abstract class LocalStorageEvent extends Equatable {
  const LocalStorageEvent();
}

class SettingsRestore extends LocalStorageEvent {
  const SettingsRestore();

  @override
  List<Object?> get props => [];
}
