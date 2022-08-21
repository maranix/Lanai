import 'package:equatable/equatable.dart';

class SettingsModel extends Equatable {
  const SettingsModel({
    this.source = "Pexels",
  });

  factory SettingsModel.fromJson(Map<String, dynamic> json) => SettingsModel(
        source: json["source"],
      );

  final String source;

  SettingsModel copyWith({
    String? source,
  }) =>
      SettingsModel(
        source: source ?? this.source,
      );

  Map<String, dynamic> toJson() => {
        'source': source,
      };

  @override
  List<Object?> get props => [source];
}
