// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'collections_model.freezed.dart';
part 'collections_model.g.dart';

@freezed
class Collection with _$Collection {
  const factory Collection.data(
      String id,
      String title,
      String? description,
      bool private,
      int media_count,
      int photos_count,
      int videos_count) = CollectionData;

  const factory Collection.loading() = CollectionLoading;
  const factory Collection.error(Object? error) = CollectionError;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionData.fromJson(json);
}

@freezed
class CollectionMedia with _$CollectionMedia {
  const factory CollectionMedia.data(String id, List<dynamic> media) =
      CollectionMediaData;

  const factory CollectionMedia.loading() = CollectionMediaLoading;
  const factory CollectionMedia.error(Object? error) = CollectionMediaError;

  factory CollectionMedia.fromJson(Map<String, dynamic> json) =>
      _$CollectionMediaData.fromJson(json);
}
