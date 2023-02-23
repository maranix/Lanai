// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Photo _$$_PhotoFromJson(Map<String, dynamic> json) => _$_Photo(
      id: json['id'] as int,
      pageURL: json['pageURL'] as String,
      type: json['type'] as String,
      tags: json['tags'] as String,
      previewURL: json['previewURL'] as String,
      previewWidth: json['previewWidth'] as int,
      previewHeight: json['previewHeight'] as int,
      webformatURL: json['webformatURL'] as String,
      webformatWidth: json['webformatWidth'] as int,
      webformatHeight: json['webformatHeight'] as int,
      largeImageURL: json['largeImageURL'] as String,
      imageWidth: json['imageWidth'] as int,
      imageHeight: json['imageHeight'] as int,
      imageSize: json['imageSize'] as int,
      views: json['views'] as int,
      downloads: json['downloads'] as int,
      collections: json['collections'] as int,
      likes: json['likes'] as int,
      comments: json['comments'] as int,
      user_id: json['user_id'] as int,
      user: json['user'] as String,
      userImageURL: json['userImageURL'] as String,
    );

Map<String, dynamic> _$$_PhotoToJson(_$_Photo instance) => <String, dynamic>{
      'id': instance.id,
      'pageURL': instance.pageURL,
      'type': instance.type,
      'tags': instance.tags,
      'previewURL': instance.previewURL,
      'previewWidth': instance.previewWidth,
      'previewHeight': instance.previewHeight,
      'webformatURL': instance.webformatURL,
      'webformatWidth': instance.webformatWidth,
      'webformatHeight': instance.webformatHeight,
      'largeImageURL': instance.largeImageURL,
      'imageWidth': instance.imageWidth,
      'imageHeight': instance.imageHeight,
      'imageSize': instance.imageSize,
      'views': instance.views,
      'downloads': instance.downloads,
      'collections': instance.collections,
      'likes': instance.likes,
      'comments': instance.comments,
      'user_id': instance.user_id,
      'user': instance.user,
      'userImageURL': instance.userImageURL,
    };
