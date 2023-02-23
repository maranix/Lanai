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
  int get total => throw _privateConstructorUsedError;
  int get totalHits => throw _privateConstructorUsedError;
  List<Photo> get hits => throw _privateConstructorUsedError;

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
  $Res call({int total, int totalHits, List<Photo> hits});
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
    Object? total = null,
    Object? totalHits = null,
    Object? hits = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalHits: null == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int,
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
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
  $Res call({int total, int totalHits, List<Photo> hits});
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
    Object? total = null,
    Object? totalHits = null,
    Object? hits = null,
  }) {
    return _then(_$_PhotosResponse(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalHits: null == totalHits
          ? _value.totalHits
          : totalHits // ignore: cast_nullable_to_non_nullable
              as int,
      hits: null == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotosResponse implements _PhotosResponse {
  const _$_PhotosResponse(
      {required this.total,
      required this.totalHits,
      required final List<Photo> hits})
      : _hits = hits;

  factory _$_PhotosResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PhotosResponseFromJson(json);

  @override
  final int total;
  @override
  final int totalHits;
  final List<Photo> _hits;
  @override
  List<Photo> get hits {
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hits);
  }

  @override
  String toString() {
    return 'PhotosResponse(total: $total, totalHits: $totalHits, hits: $hits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotosResponse &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalHits, totalHits) ||
                other.totalHits == totalHits) &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, totalHits,
      const DeepCollectionEquality().hash(_hits));

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
      {required final int total,
      required final int totalHits,
      required final List<Photo> hits}) = _$_PhotosResponse;

  factory _PhotosResponse.fromJson(Map<String, dynamic> json) =
      _$_PhotosResponse.fromJson;

  @override
  int get total;
  @override
  int get totalHits;
  @override
  List<Photo> get hits;
  @override
  @JsonKey(ignore: true)
  _$$_PhotosResponseCopyWith<_$_PhotosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
