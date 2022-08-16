import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixabay_photo.freezed.dart';
part 'pixabay_photo.g.dart';

@freezed
class PixabayPhotoList with _$PixabayPhotoList {
  const factory PixabayPhotoList({
    required int total,
    required List<PixabayPhoto> hits,
  }) = _PixabayPhotoList;

  factory PixabayPhotoList.fromJson(Map<String, Object?> json) =>
      _$PixabayPhotoListFromJson(json);
}

@freezed
class PixabayPhoto with _$PixabayPhoto {
  const factory PixabayPhoto({
    required int id,
    required String pageURL,
    required String largeImageURL,
    String? fullHDURL,
    String? imageURL,
    required int views,
    required int downloads,
    required int likes,
    required int user_id,
    required String user,
    required String userImageURL,
  }) = _PixabayPhoto;

  factory PixabayPhoto.fromJson(Map<String, Object?> json) =>
      _$PixabayPhotoFromJson(json);
}
