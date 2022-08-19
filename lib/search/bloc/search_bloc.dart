import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_event.dart';
part 'search_state.dart';

/// {@template search_bloc}
/// SearchStates are dispatched on SearchEvents.
/// {@endtemplate}
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  /// {@macro search_bloc}
  SearchBloc() : super(const SearchState()) {
    on<SearchInitiated>(_onSearchInitial);
  }

  FutureOr<void> _onSearchInitial(
    SearchInitiated event,
    Emitter<SearchState> emit,
  ) {
    // TODO: Add logic and emit state here
  }
}
