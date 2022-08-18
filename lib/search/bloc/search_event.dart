part of 'search_bloc.dart';

/// {@template search_event}
/// {@endtemplate}
abstract class SearchEvent extends Equatable {
  /// {@macro search_event}
  const SearchEvent();
}

/// {@template search_initial_event}
/// SearchEvent is added to trigger custom logic defined in SearchBloc.
/// {@endtemplate}
class SearchInitiated extends SearchEvent {
  /// {@macro search_initial_event}
  const SearchInitiated({required this.query});

  final String query;

  @override
  List<Object> get props => <Object>[];
}
