// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Collections _$$_CollectionsFromJson(Map<String, dynamic> json) =>
    _$_Collections(
      collections: (json['collections'] as List<dynamic>)
          .map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CollectionsToJson(_$_Collections instance) =>
    <String, dynamic>{
      'collections': instance.collections,
    };

_$_Collection _$$_CollectionFromJson(Map<String, dynamic> json) =>
    _$_Collection(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      private: json['private'] as bool,
      mediaCount: json['mediaCount'] as int?,
      photosCount: json['photosCount'] as int?,
      videosCount: json['videosCount'] as int?,
    );

Map<String, dynamic> _$$_CollectionToJson(_$_Collection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'private': instance.private,
      'mediaCount': instance.mediaCount,
      'photosCount': instance.photosCount,
      'videosCount': instance.videosCount,
    };
