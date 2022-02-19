// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class Video with _$Video {
  const factory Video.data(
    int id,
    int width,
    int height,
    String url,
    String image,
    int duration,
    User user,
    List<VideoFile> video_files,
    List<VideoPicture> video_pictures,
  ) = VideoData;

  const factory Video.loading() = VideoLoading;
  const factory Video.error(Object? error) = VideoError;

  factory Video.fromJson(Map<String, dynamic> json) =>
      _$VideoData.fromJson(json);
}

@freezed
class User with _$User {
  const factory User(
    int id,
    String name,
    String url,
  ) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class VideoFile with _$VideoFile {
  const factory VideoFile(
    int id,
    String quality,
    String file_type,
    int? width,
    int? height,
    String link,
  ) = _VideoFile;

  factory VideoFile.fromJson(Map<String, dynamic> json) =>
      _$VideoFileFromJson(json);
}

@freezed
class VideoPicture with _$VideoPicture {
  const factory VideoPicture(
    int id,
    String? picture,
    int nr,
  ) = _VideoPicture;

  factory VideoPicture.fromJson(Map<String, dynamic> json) =>
      _$VideoPictureFromJson(json);
}
