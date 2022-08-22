import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    dev.log("${bloc.runtimeType}: $change");
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    dev.log("${bloc.runtimeType} $error\nStackTrace: $stackTrace");
    super.onError(bloc, error, stackTrace);
  }
}
