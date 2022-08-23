import 'package:equatable/equatable.dart';
import 'package:lanai/app/constants.dart';

class AppSettingsModel extends Equatable {
  const AppSettingsModel({
    this.theme = ThemeType.light,
    this.source = ImageSource.pexels,
  });

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      AppSettingsModel(
        theme: ThemeType.values.byName(json['themeType']),
        source: ImageSource.values.byName(json['source']),
      );

  final ThemeType theme;

  final ImageSource source;

  AppSettingsModel copyWith({
    ThemeType? theme,
    ImageSource? source,
  }) =>
      AppSettingsModel(
        theme: theme ?? this.theme,
        source: source ?? this.source,
      );

  Map<String, dynamic> toJson() => {
        'themeType': theme.name,
        'source': source.name,
      };

  @override
  List<Object?> get props => [
        theme,
        source,
      ];
}
