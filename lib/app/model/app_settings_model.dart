import 'package:equatable/equatable.dart';
import 'package:lanai/app/constants.dart';

class AppSettingsModel extends Equatable {
  const AppSettingsModel({
    this.theme = ThemeType.light,
  });

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) => AppSettingsModel(
        theme: json["themeType"],
      );

  final ThemeType theme;

  AppSettingsModel copyWith({
    ThemeType? theme,
  }) =>
      AppSettingsModel(
        theme: theme ?? this.theme,
      );

  Map<String, dynamic> toJson() => {
        'themeType': theme,
      };

  @override
  List<Object?> get props => [theme];
}
