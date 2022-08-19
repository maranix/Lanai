part of 'photo_bloc.dart';

/// {@template photo_event}
/// {@endtemplate}
abstract class PhotoEvent extends Equatable {
  /// {@macro photo_event}
  const PhotoEvent();
}

/// {@template photo_initial_event}
/// PhotoEvent is added to trigger custom logic defined in PhotoBloc.
/// {@endtemplate}
class PhotoInitial extends PhotoEvent {
  /// {@macro photo_initial_event}
  const PhotoInitial();

  @override
  List<Object> get props => <Object>[];
}
