part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {
  const ThemeState(this.themeData);

  final ThemeData themeData;

  @override
  List<Object> get props => [themeData];
}

class ThemeDataLight extends ThemeState {
  ThemeDataLight()
      : super(
          ThemeData(
            brightness: Brightness.light,
          ),
        );

  @override
  List<Object> get props => [themeData];
}

class ThemeDataDark extends ThemeState {
  ThemeDataDark()
      : super(
          ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.black,
          ),
        );

  @override
  List<Object> get props => [themeData];
}
