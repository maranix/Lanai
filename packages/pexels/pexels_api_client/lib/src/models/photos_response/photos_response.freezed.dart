// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photos_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotosResponse _$PhotosResponseFromJson(Map<String, dynamic> json) {
  return _PhotosResponse.fromJson(json);
}

/// @nodoc
mixin _$PhotosResponse {
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;
  String? get nextPage => throw _privateConstructorUsedError;
  String? get prevPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosResponseCopyWith<PhotosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosResponseCopyWith<$Res> {
  factory $PhotosResponseCopyWith(
          PhotosResponse value, $Res Function(PhotosResponse) then) =
      _$PhotosResponseCopyWithImpl<$Res, PhotosResponse>;
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalResults,
      List<Photo> photos,
      String? nextPage,
      String? prevPage});
}

/// @nodoc
class _$PhotosResponseCopyWithImpl<$Res, $Val extends PhotosResponse>
    implements $PhotosResponseCopyWith<$Res> {
  _$PhotosResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalResults = null,
    Object? photos = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhotosResponseCopyWith<$Res>
    implements $PhotosResponseCopyWith<$Res> {
  factory _$$_PhotosResponseCopyWith(
          _$_PhotosResponse value, $Res Function(_$_PhotosResponse) then) =
      __$$_PhotosResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int perPage,
      int totalResults,
      List<Photo> photos,
      String? nextPage,
      String? prevPage});
}

/// @nodoc
class __$$_PhotosResponseCopyWithImpl<$Res>
    extends _$PhotosResponseCopyWithImpl<$Res, _$_PhotosResponse>
    implements _$$_PhotosResponseCopyWith<$Res> {
  __$$_PhotosResponseCopyWithImpl(
      _$_PhotosResponse _value, $Res Function(_$_PhotosResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? totalResults = null,
    Object? photos = null,
    Object? nextPage = freezed,
    Object? prevPage = freezed,
  }) {
    return _then(_$_PhotosResponse(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
      prevPage: freezed == prevPage
          ? _value.prevPage
          : prevPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PhotosResponse implements _PhotosResponse {
  const _$_PhotosResponse(
      {required this.page,
      required this.perPage,
      required this.totalResults,
      required final List<Photo> photos,
      this.nextPage,
      this.prevPage})
      : _photos = photos;

  factory _$_PhotosResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PhotosResponseFromJson(json);

  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalResults;
  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final String? nextPage;
  @override
  final String? prevPage;

  @override
  String toString() {
    return 'PhotosResponse(page: $page, perPage: $perPage, totalResults: $totalResults, photos: $photos, nextPage: $nextPage, prevPage: $prevPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotosResponse &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.prevPage, prevPage) ||
                other.prevPage == prevPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, totalResults,
      const DeepCollectionEquality().hash(_photos), nextPage, prevPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotosResponseCopyWith<_$_PhotosResponse> get copyWith =>
      __$$_PhotosResponseCopyWithImpl<_$_PhotosResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotosResponseToJson(
      this,
    );
  }
}

abstract class _PhotosResponse implements PhotosResponse {
  const factory _PhotosResponse(
      {required final int page,
      required final int perPage,
      required final int totalResults,
      required final List<Photo> photos,
      final String? nextPage,
      final String? prevPage}) = _$_PhotosResponse;

  factory _PhotosResponse.fromJson(Map<String, dynamic> json) =
      _$_PhotosResponse.fromJson;

  @override
  int get page;
  @override
  int get perPage;
  @override
  int get totalResults;
  @override
  List<Photo> get photos;
  @override
  String? get nextPage;
  @override
  String? get prevPage;
  @override
  @JsonKey(ignore: true)
  _$$_PhotosResponseCopyWith<_$_PhotosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
