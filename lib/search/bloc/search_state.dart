part of 'search_bloc.dart';

enum SearchStatus {
  initial,

  searching,

  completed,

  failed,
}

/// {@template search_state}
/// SearchState description
/// {@endtemplate}
class SearchState extends Equatable {
  /// {@macro search_state}
  const SearchState({
    this.status = SearchStatus.initial,
  });

  /// A description for customProperty
  final SearchStatus status;

  @override
  List<Object> get props => <Object>[status];

  /// Creates a copy of the current SearchState with property changes
  SearchState copyWith({
    SearchStatus? status,
  }) {
    return SearchState(
      status: status ?? this.status,
    );
  }
}
