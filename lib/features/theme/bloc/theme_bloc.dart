import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:lanai/features/theme/my_themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

/// {@template theme_bloc}
/// ThemeStates are dispatched on ThemeEvents.
/// {@endtemplate}
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  /// {@macro theme_bloc}
  ThemeBloc({required MyThemes theme})
      : _myThemes = theme,
        super(ThemeState(theme: theme.lightTheme)) {
    on<ThemeToggled>(_onThemeToggled);
  }

  final MyThemes _myThemes;

  FutureOr<void> _onThemeToggled(
    ThemeToggled event,
    Emitter<ThemeState> emit,
  ) {
    emit(
      ThemeState(
        status: ThemeStatus.toggled,
        theme: state.theme.brightness == Brightness.dark
            ? _myThemes.lightTheme
            : _myThemes.darkTheme,
      ),
    );
  }
}
