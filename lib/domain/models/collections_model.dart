import 'package:freezed_annotation/freezed_annotation.dart';

part 'collections_model.freezed.dart';
part 'collections_model.g.dart';

@freezed
class Collections with _$Collections {
  const factory Collections({
    required List<Collection> collections,
  }) = _Collections;

  factory Collections.fromJson(Map<String, dynamic> json) =>
      _$CollectionsFromJson(json);
}

@freezed
class Collection with _$Collection {
  const factory Collection({
    required String id,
    required String title,
    String? description,
    required bool private,
    int? mediaCount,
    int? photosCount,
    int? videosCount,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
