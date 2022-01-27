// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collections_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Collections _$CollectionsFromJson(Map<String, dynamic> json) {
  return _Collections.fromJson(json);
}

/// @nodoc
class _$CollectionsTearOff {
  const _$CollectionsTearOff();

  _Collections call({required List<Collection> collections}) {
    return _Collections(
      collections: collections,
    );
  }

  Collections fromJson(Map<String, Object?> json) {
    return Collections.fromJson(json);
  }
}

/// @nodoc
const $Collections = _$CollectionsTearOff();

/// @nodoc
mixin _$Collections {
  List<Collection> get collections => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionsCopyWith<Collections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionsCopyWith<$Res> {
  factory $CollectionsCopyWith(
          Collections value, $Res Function(Collections) then) =
      _$CollectionsCopyWithImpl<$Res>;
  $Res call({List<Collection> collections});
}

/// @nodoc
class _$CollectionsCopyWithImpl<$Res> implements $CollectionsCopyWith<$Res> {
  _$CollectionsCopyWithImpl(this._value, this._then);

  final Collections _value;
  // ignore: unused_field
  final $Res Function(Collections) _then;

  @override
  $Res call({
    Object? collections = freezed,
  }) {
    return _then(_value.copyWith(
      collections: collections == freezed
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<Collection>,
    ));
  }
}

/// @nodoc
abstract class _$CollectionsCopyWith<$Res>
    implements $CollectionsCopyWith<$Res> {
  factory _$CollectionsCopyWith(
          _Collections value, $Res Function(_Collections) then) =
      __$CollectionsCopyWithImpl<$Res>;
  @override
  $Res call({List<Collection> collections});
}

/// @nodoc
class __$CollectionsCopyWithImpl<$Res> extends _$CollectionsCopyWithImpl<$Res>
    implements _$CollectionsCopyWith<$Res> {
  __$CollectionsCopyWithImpl(
      _Collections _value, $Res Function(_Collections) _then)
      : super(_value, (v) => _then(v as _Collections));

  @override
  _Collections get _value => super._value as _Collections;

  @override
  $Res call({
    Object? collections = freezed,
  }) {
    return _then(_Collections(
      collections: collections == freezed
          ? _value.collections
          : collections // ignore: cast_nullable_to_non_nullable
              as List<Collection>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Collections implements _Collections {
  const _$_Collections({required this.collections});

  factory _$_Collections.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionsFromJson(json);

  @override
  final List<Collection> collections;

  @override
  String toString() {
    return 'Collections(collections: $collections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Collections &&
            const DeepCollectionEquality()
                .equals(other.collections, collections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(collections));

  @JsonKey(ignore: true)
  @override
  _$CollectionsCopyWith<_Collections> get copyWith =>
      __$CollectionsCopyWithImpl<_Collections>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionsToJson(this);
  }
}

abstract class _Collections implements Collections {
  const factory _Collections({required List<Collection> collections}) =
      _$_Collections;

  factory _Collections.fromJson(Map<String, dynamic> json) =
      _$_Collections.fromJson;

  @override
  List<Collection> get collections;
  @override
  @JsonKey(ignore: true)
  _$CollectionsCopyWith<_Collections> get copyWith =>
      throw _privateConstructorUsedError;
}

Collection _$CollectionFromJson(Map<String, dynamic> json) {
  return _Collection.fromJson(json);
}

/// @nodoc
class _$CollectionTearOff {
  const _$CollectionTearOff();

  _Collection call(
      {required String id,
      required String title,
      String? description,
      required bool private,
      int? mediaCount,
      int? photosCount,
      int? videosCount}) {
    return _Collection(
      id: id,
      title: title,
      description: description,
      private: private,
      mediaCount: mediaCount,
      photosCount: photosCount,
      videosCount: videosCount,
    );
  }

  Collection fromJson(Map<String, Object?> json) {
    return Collection.fromJson(json);
  }
}

/// @nodoc
const $Collection = _$CollectionTearOff();

/// @nodoc
mixin _$Collection {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  int? get mediaCount => throw _privateConstructorUsedError;
  int? get photosCount => throw _privateConstructorUsedError;
  int? get videosCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionCopyWith<Collection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionCopyWith<$Res> {
  factory $CollectionCopyWith(
          Collection value, $Res Function(Collection) then) =
      _$CollectionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String? description,
      bool private,
      int? mediaCount,
      int? photosCount,
      int? videosCount});
}

/// @nodoc
class _$CollectionCopyWithImpl<$Res> implements $CollectionCopyWith<$Res> {
  _$CollectionCopyWithImpl(this._value, this._then);

  final Collection _value;
  // ignore: unused_field
  final $Res Function(Collection) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? private = freezed,
    Object? mediaCount = freezed,
    Object? photosCount = freezed,
    Object? videosCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      mediaCount: mediaCount == freezed
          ? _value.mediaCount
          : mediaCount // ignore: cast_nullable_to_non_nullable
              as int?,
      photosCount: photosCount == freezed
          ? _value.photosCount
          : photosCount // ignore: cast_nullable_to_non_nullable
              as int?,
      videosCount: videosCount == freezed
          ? _value.videosCount
          : videosCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CollectionCopyWith<$Res> implements $CollectionCopyWith<$Res> {
  factory _$CollectionCopyWith(
          _Collection value, $Res Function(_Collection) then) =
      __$CollectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String? description,
      bool private,
      int? mediaCount,
      int? photosCount,
      int? videosCount});
}

/// @nodoc
class __$CollectionCopyWithImpl<$Res> extends _$CollectionCopyWithImpl<$Res>
    implements _$CollectionCopyWith<$Res> {
  __$CollectionCopyWithImpl(
      _Collection _value, $Res Function(_Collection) _then)
      : super(_value, (v) => _then(v as _Collection));

  @override
  _Collection get _value => super._value as _Collection;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? private = freezed,
    Object? mediaCount = freezed,
    Object? photosCount = freezed,
    Object? videosCount = freezed,
  }) {
    return _then(_Collection(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      mediaCount: mediaCount == freezed
          ? _value.mediaCount
          : mediaCount // ignore: cast_nullable_to_non_nullable
              as int?,
      photosCount: photosCount == freezed
          ? _value.photosCount
          : photosCount // ignore: cast_nullable_to_non_nullable
              as int?,
      videosCount: videosCount == freezed
          ? _value.videosCount
          : videosCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Collection implements _Collection {
  const _$_Collection(
      {required this.id,
      required this.title,
      this.description,
      required this.private,
      this.mediaCount,
      this.photosCount,
      this.videosCount});

  factory _$_Collection.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final bool private;
  @override
  final int? mediaCount;
  @override
  final int? photosCount;
  @override
  final int? videosCount;

  @override
  String toString() {
    return 'Collection(id: $id, title: $title, description: $description, private: $private, mediaCount: $mediaCount, photosCount: $photosCount, videosCount: $videosCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Collection &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.private, private) &&
            const DeepCollectionEquality()
                .equals(other.mediaCount, mediaCount) &&
            const DeepCollectionEquality()
                .equals(other.photosCount, photosCount) &&
            const DeepCollectionEquality()
                .equals(other.videosCount, videosCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(private),
      const DeepCollectionEquality().hash(mediaCount),
      const DeepCollectionEquality().hash(photosCount),
      const DeepCollectionEquality().hash(videosCount));

  @JsonKey(ignore: true)
  @override
  _$CollectionCopyWith<_Collection> get copyWith =>
      __$CollectionCopyWithImpl<_Collection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionToJson(this);
  }
}

abstract class _Collection implements Collection {
  const factory _Collection(
      {required String id,
      required String title,
      String? description,
      required bool private,
      int? mediaCount,
      int? photosCount,
      int? videosCount}) = _$_Collection;

  factory _Collection.fromJson(Map<String, dynamic> json) =
      _$_Collection.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  bool get private;
  @override
  int? get mediaCount;
  @override
  int? get photosCount;
  @override
  int? get videosCount;
  @override
  @JsonKey(ignore: true)
  _$CollectionCopyWith<_Collection> get copyWith =>
      throw _privateConstructorUsedError;
}
