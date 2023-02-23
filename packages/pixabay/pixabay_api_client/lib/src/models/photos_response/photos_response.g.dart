// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotosResponse _$$_PhotosResponseFromJson(Map<String, dynamic> json) =>
    _$_PhotosResponse(
      total: json['total'] as int,
      totalHits: json['totalHits'] as int,
      hits: (json['hits'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PhotosResponseToJson(_$_PhotosResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'totalHits': instance.totalHits,
      'hits': instance.hits,
    };
