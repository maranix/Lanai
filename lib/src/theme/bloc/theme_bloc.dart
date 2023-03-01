import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeDataLight()) {
    on<ThemeToggled>(_onThemeToggled);
  }

  void _onThemeToggled(ThemeToggled event, Emitter<ThemeState> emit) {
    if (state.themeData.brightness == Brightness.dark) {
      emit(ThemeDataLight());
    } else {
      emit(ThemeDataDark());
    }
  }
}
