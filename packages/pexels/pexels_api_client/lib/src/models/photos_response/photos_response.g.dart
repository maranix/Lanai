// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotosResponse _$$_PhotosResponseFromJson(Map<String, dynamic> json) =>
    _$_PhotosResponse(
      page: json['page'] as int,
      perPage: json['per_page'] as int,
      totalResults: json['total_results'] as int,
      photos: (json['photos'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPage: json['next_page'] as String?,
      prevPage: json['prev_page'] as String?,
    );

Map<String, dynamic> _$$_PhotosResponseToJson(_$_PhotosResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'photos': instance.photos,
      'next_page': instance.nextPage,
      'prev_page': instance.prevPage,
    };
