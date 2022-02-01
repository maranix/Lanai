// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
class _$PhotoTearOff {
  const _$PhotoTearOff();

  _Photo call({required List<PhotoElement> photos}) {
    return _Photo(
      photos: photos,
    );
  }

  Photo fromJson(Map<String, Object?> json) {
    return Photo.fromJson(json);
  }
}

/// @nodoc
const $Photo = _$PhotoTearOff();

/// @nodoc
mixin _$Photo {
  List<PhotoElement> get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res>;
  $Res call({List<PhotoElement> photos});
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  final Photo _value;
  // ignore: unused_field
  final $Res Function(Photo) _then;

  @override
  $Res call({
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoElement>,
    ));
  }
}

/// @nodoc
abstract class _$PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) then) =
      __$PhotoCopyWithImpl<$Res>;
  @override
  $Res call({List<PhotoElement> photos});
}

/// @nodoc
class __$PhotoCopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res>
    implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(_Photo _value, $Res Function(_Photo) _then)
      : super(_value, (v) => _then(v as _Photo));

  @override
  _Photo get _value => super._value as _Photo;

  @override
  $Res call({
    Object? photos = freezed,
  }) {
    return _then(_Photo(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PhotoElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Photo implements _Photo {
  const _$_Photo({required this.photos});

  factory _$_Photo.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoFromJson(json);

  @override
  final List<PhotoElement> photos;

  @override
  String toString() {
    return 'Photo(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Photo &&
            const DeepCollectionEquality().equals(other.photos, photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(photos));

  @JsonKey(ignore: true)
  @override
  _$PhotoCopyWith<_Photo> get copyWith =>
      __$PhotoCopyWithImpl<_Photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoToJson(this);
  }
}

abstract class _Photo implements Photo {
  const factory _Photo({required List<PhotoElement> photos}) = _$_Photo;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$_Photo.fromJson;

  @override
  List<PhotoElement> get photos;
  @override
  @JsonKey(ignore: true)
  _$PhotoCopyWith<_Photo> get copyWith => throw _privateConstructorUsedError;
}

PhotoElement _$PhotoElementFromJson(Map<String, dynamic> json) {
  return _PhotoElement.fromJson(json);
}

/// @nodoc
class _$PhotoElementTearOff {
  const _$PhotoElementTearOff();

  _PhotoElement call(
      {required int id,
      required int width,
      required int height,
      required String url,
      required String photographer,
      @JsonKey(name: 'photographer_url') required String photographerUrl,
      @JsonKey(name: 'photographer_id') required int photographerId,
      @JsonKey(name: 'avg_color') required String avgColor,
      required Src src,
      required bool liked,
      required String alt}) {
    return _PhotoElement(
      id: id,
      width: width,
      height: height,
      url: url,
      photographer: photographer,
      photographerUrl: photographerUrl,
      photographerId: photographerId,
      avgColor: avgColor,
      src: src,
      liked: liked,
      alt: alt,
    );
  }

  PhotoElement fromJson(Map<String, Object?> json) {
    return PhotoElement.fromJson(json);
  }
}

/// @nodoc
const $PhotoElement = _$PhotoElementTearOff();

/// @nodoc
mixin _$PhotoElement {
  int get id => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get photographer => throw _privateConstructorUsedError;
  @JsonKey(name: 'photographer_url')
  String get photographerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'photographer_id')
  int get photographerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_color')
  String get avgColor => throw _privateConstructorUsedError;
  Src get src => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;
  String get alt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoElementCopyWith<PhotoElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoElementCopyWith<$Res> {
  factory $PhotoElementCopyWith(
          PhotoElement value, $Res Function(PhotoElement) then) =
      _$PhotoElementCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int width,
      int height,
      String url,
      String photographer,
      @JsonKey(name: 'photographer_url') String photographerUrl,
      @JsonKey(name: 'photographer_id') int photographerId,
      @JsonKey(name: 'avg_color') String avgColor,
      Src src,
      bool liked,
      String alt});

  $SrcCopyWith<$Res> get src;
}

/// @nodoc
class _$PhotoElementCopyWithImpl<$Res> implements $PhotoElementCopyWith<$Res> {
  _$PhotoElementCopyWithImpl(this._value, this._then);

  final PhotoElement _value;
  // ignore: unused_field
  final $Res Function(PhotoElement) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? photographerUrl = freezed,
    Object? photographerId = freezed,
    Object? avgColor = freezed,
    Object? src = freezed,
    Object? liked = freezed,
    Object? alt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: photographer == freezed
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      photographerUrl: photographerUrl == freezed
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photographerId: photographerId == freezed
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int,
      avgColor: avgColor == freezed
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String,
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      alt: alt == freezed
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SrcCopyWith<$Res> get src {
    return $SrcCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value));
    });
  }
}

/// @nodoc
abstract class _$PhotoElementCopyWith<$Res>
    implements $PhotoElementCopyWith<$Res> {
  factory _$PhotoElementCopyWith(
          _PhotoElement value, $Res Function(_PhotoElement) then) =
      __$PhotoElementCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int width,
      int height,
      String url,
      String photographer,
      @JsonKey(name: 'photographer_url') String photographerUrl,
      @JsonKey(name: 'photographer_id') int photographerId,
      @JsonKey(name: 'avg_color') String avgColor,
      Src src,
      bool liked,
      String alt});

  @override
  $SrcCopyWith<$Res> get src;
}

/// @nodoc
class __$PhotoElementCopyWithImpl<$Res> extends _$PhotoElementCopyWithImpl<$Res>
    implements _$PhotoElementCopyWith<$Res> {
  __$PhotoElementCopyWithImpl(
      _PhotoElement _value, $Res Function(_PhotoElement) _then)
      : super(_value, (v) => _then(v as _PhotoElement));

  @override
  _PhotoElement get _value => super._value as _PhotoElement;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? photographerUrl = freezed,
    Object? photographerId = freezed,
    Object? avgColor = freezed,
    Object? src = freezed,
    Object? liked = freezed,
    Object? alt = freezed,
  }) {
    return _then(_PhotoElement(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: photographer == freezed
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      photographerUrl: photographerUrl == freezed
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photographerId: photographerId == freezed
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int,
      avgColor: avgColor == freezed
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String,
      src: src == freezed
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src,
      liked: liked == freezed
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      alt: alt == freezed
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoElement implements _PhotoElement {
  const _$_PhotoElement(
      {required this.id,
      required this.width,
      required this.height,
      required this.url,
      required this.photographer,
      @JsonKey(name: 'photographer_url') required this.photographerUrl,
      @JsonKey(name: 'photographer_id') required this.photographerId,
      @JsonKey(name: 'avg_color') required this.avgColor,
      required this.src,
      required this.liked,
      required this.alt});

  factory _$_PhotoElement.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoElementFromJson(json);

  @override
  final int id;
  @override
  final int width;
  @override
  final int height;
  @override
  final String url;
  @override
  final String photographer;
  @override
  @JsonKey(name: 'photographer_url')
  final String photographerUrl;
  @override
  @JsonKey(name: 'photographer_id')
  final int photographerId;
  @override
  @JsonKey(name: 'avg_color')
  final String avgColor;
  @override
  final Src src;
  @override
  final bool liked;
  @override
  final String alt;

  @override
  String toString() {
    return 'PhotoElement(id: $id, width: $width, height: $height, url: $url, photographer: $photographer, photographerUrl: $photographerUrl, photographerId: $photographerId, avgColor: $avgColor, src: $src, liked: $liked, alt: $alt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotoElement &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.photographer, photographer) &&
            const DeepCollectionEquality()
                .equals(other.photographerUrl, photographerUrl) &&
            const DeepCollectionEquality()
                .equals(other.photographerId, photographerId) &&
            const DeepCollectionEquality().equals(other.avgColor, avgColor) &&
            const DeepCollectionEquality().equals(other.src, src) &&
            const DeepCollectionEquality().equals(other.liked, liked) &&
            const DeepCollectionEquality().equals(other.alt, alt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(photographer),
      const DeepCollectionEquality().hash(photographerUrl),
      const DeepCollectionEquality().hash(photographerId),
      const DeepCollectionEquality().hash(avgColor),
      const DeepCollectionEquality().hash(src),
      const DeepCollectionEquality().hash(liked),
      const DeepCollectionEquality().hash(alt));

  @JsonKey(ignore: true)
  @override
  _$PhotoElementCopyWith<_PhotoElement> get copyWith =>
      __$PhotoElementCopyWithImpl<_PhotoElement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoElementToJson(this);
  }
}

abstract class _PhotoElement implements PhotoElement {
  const factory _PhotoElement(
      {required int id,
      required int width,
      required int height,
      required String url,
      required String photographer,
      @JsonKey(name: 'photographer_url') required String photographerUrl,
      @JsonKey(name: 'photographer_id') required int photographerId,
      @JsonKey(name: 'avg_color') required String avgColor,
      required Src src,
      required bool liked,
      required String alt}) = _$_PhotoElement;

  factory _PhotoElement.fromJson(Map<String, dynamic> json) =
      _$_PhotoElement.fromJson;

  @override
  int get id;
  @override
  int get width;
  @override
  int get height;
  @override
  String get url;
  @override
  String get photographer;
  @override
  @JsonKey(name: 'photographer_url')
  String get photographerUrl;
  @override
  @JsonKey(name: 'photographer_id')
  int get photographerId;
  @override
  @JsonKey(name: 'avg_color')
  String get avgColor;
  @override
  Src get src;
  @override
  bool get liked;
  @override
  String get alt;
  @override
  @JsonKey(ignore: true)
  _$PhotoElementCopyWith<_PhotoElement> get copyWith =>
      throw _privateConstructorUsedError;
}

Src _$SrcFromJson(Map<String, dynamic> json) {
  return _Src.fromJson(json);
}

/// @nodoc
class _$SrcTearOff {
  const _$SrcTearOff();

  _Src call(
      {required String original,
      String? large2X,
      required String large,
      required String medium,
      required String small,
      required String portrait,
      required String landscape,
      required String tiny}) {
    return _Src(
      original: original,
      large2X: large2X,
      large: large,
      medium: medium,
      small: small,
      portrait: portrait,
      landscape: landscape,
      tiny: tiny,
    );
  }

  Src fromJson(Map<String, Object?> json) {
    return Src.fromJson(json);
  }
}

/// @nodoc
const $Src = _$SrcTearOff();

/// @nodoc
mixin _$Src {
  String get original => throw _privateConstructorUsedError;
  String? get large2X => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get portrait => throw _privateConstructorUsedError;
  String get landscape => throw _privateConstructorUsedError;
  String get tiny => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SrcCopyWith<Src> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SrcCopyWith<$Res> {
  factory $SrcCopyWith(Src value, $Res Function(Src) then) =
      _$SrcCopyWithImpl<$Res>;
  $Res call(
      {String original,
      String? large2X,
      String large,
      String medium,
      String small,
      String portrait,
      String landscape,
      String tiny});
}

/// @nodoc
class _$SrcCopyWithImpl<$Res> implements $SrcCopyWith<$Res> {
  _$SrcCopyWithImpl(this._value, this._then);

  final Src _value;
  // ignore: unused_field
  final $Res Function(Src) _then;

  @override
  $Res call({
    Object? original = freezed,
    Object? large2X = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_value.copyWith(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large2X: large2X == freezed
          ? _value.large2X
          : large2X // ignore: cast_nullable_to_non_nullable
              as String?,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: portrait == freezed
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
      landscape: landscape == freezed
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String,
      tiny: tiny == freezed
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SrcCopyWith<$Res> implements $SrcCopyWith<$Res> {
  factory _$SrcCopyWith(_Src value, $Res Function(_Src) then) =
      __$SrcCopyWithImpl<$Res>;
  @override
  $Res call(
      {String original,
      String? large2X,
      String large,
      String medium,
      String small,
      String portrait,
      String landscape,
      String tiny});
}

/// @nodoc
class __$SrcCopyWithImpl<$Res> extends _$SrcCopyWithImpl<$Res>
    implements _$SrcCopyWith<$Res> {
  __$SrcCopyWithImpl(_Src _value, $Res Function(_Src) _then)
      : super(_value, (v) => _then(v as _Src));

  @override
  _Src get _value => super._value as _Src;

  @override
  $Res call({
    Object? original = freezed,
    Object? large2X = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_Src(
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large2X: large2X == freezed
          ? _value.large2X
          : large2X // ignore: cast_nullable_to_non_nullable
              as String?,
      large: large == freezed
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: portrait == freezed
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
      landscape: landscape == freezed
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String,
      tiny: tiny == freezed
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Src implements _Src {
  const _$_Src(
      {required this.original,
      this.large2X,
      required this.large,
      required this.medium,
      required this.small,
      required this.portrait,
      required this.landscape,
      required this.tiny});

  factory _$_Src.fromJson(Map<String, dynamic> json) => _$$_SrcFromJson(json);

  @override
  final String original;
  @override
  final String? large2X;
  @override
  final String large;
  @override
  final String medium;
  @override
  final String small;
  @override
  final String portrait;
  @override
  final String landscape;
  @override
  final String tiny;

  @override
  String toString() {
    return 'Src(original: $original, large2X: $large2X, large: $large, medium: $medium, small: $small, portrait: $portrait, landscape: $landscape, tiny: $tiny)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Src &&
            const DeepCollectionEquality().equals(other.original, original) &&
            const DeepCollectionEquality().equals(other.large2X, large2X) &&
            const DeepCollectionEquality().equals(other.large, large) &&
            const DeepCollectionEquality().equals(other.medium, medium) &&
            const DeepCollectionEquality().equals(other.small, small) &&
            const DeepCollectionEquality().equals(other.portrait, portrait) &&
            const DeepCollectionEquality().equals(other.landscape, landscape) &&
            const DeepCollectionEquality().equals(other.tiny, tiny));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(original),
      const DeepCollectionEquality().hash(large2X),
      const DeepCollectionEquality().hash(large),
      const DeepCollectionEquality().hash(medium),
      const DeepCollectionEquality().hash(small),
      const DeepCollectionEquality().hash(portrait),
      const DeepCollectionEquality().hash(landscape),
      const DeepCollectionEquality().hash(tiny));

  @JsonKey(ignore: true)
  @override
  _$SrcCopyWith<_Src> get copyWith =>
      __$SrcCopyWithImpl<_Src>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SrcToJson(this);
  }
}

abstract class _Src implements Src {
  const factory _Src(
      {required String original,
      String? large2X,
      required String large,
      required String medium,
      required String small,
      required String portrait,
      required String landscape,
      required String tiny}) = _$_Src;

  factory _Src.fromJson(Map<String, dynamic> json) = _$_Src.fromJson;

  @override
  String get original;
  @override
  String? get large2X;
  @override
  String get large;
  @override
  String get medium;
  @override
  String get small;
  @override
  String get portrait;
  @override
  String get landscape;
  @override
  String get tiny;
  @override
  @JsonKey(ignore: true)
  _$SrcCopyWith<_Src> get copyWith => throw _privateConstructorUsedError;
}
