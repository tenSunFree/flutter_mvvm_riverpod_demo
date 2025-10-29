// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pexels_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PexelsSearchResponse _$PexelsSearchResponseFromJson(Map<String, dynamic> json) {
  return _PexelsSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$PexelsSearchResponse {
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  List<PexelsPhoto> get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page')
  String? get nextPage => throw _privateConstructorUsedError;

  /// Serializes this PexelsSearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PexelsSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PexelsSearchResponseCopyWith<PexelsSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PexelsSearchResponseCopyWith<$Res> {
  factory $PexelsSearchResponseCopyWith(PexelsSearchResponse value,
          $Res Function(PexelsSearchResponse) then) =
      _$PexelsSearchResponseCopyWithImpl<$Res, PexelsSearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_results') int totalResults,
      int page,
      @JsonKey(name: 'per_page') int perPage,
      List<PexelsPhoto> photos,
      @JsonKey(name: 'next_page') String? nextPage});
}

/// @nodoc
class _$PexelsSearchResponseCopyWithImpl<$Res,
        $Val extends PexelsSearchResponse>
    implements $PexelsSearchResponseCopyWith<$Res> {
  _$PexelsSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PexelsSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? page = null,
    Object? perPage = null,
    Object? photos = null,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PexelsPhoto>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PexelsSearchResponseImplCopyWith<$Res>
    implements $PexelsSearchResponseCopyWith<$Res> {
  factory _$$PexelsSearchResponseImplCopyWith(_$PexelsSearchResponseImpl value,
          $Res Function(_$PexelsSearchResponseImpl) then) =
      __$$PexelsSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_results') int totalResults,
      int page,
      @JsonKey(name: 'per_page') int perPage,
      List<PexelsPhoto> photos,
      @JsonKey(name: 'next_page') String? nextPage});
}

/// @nodoc
class __$$PexelsSearchResponseImplCopyWithImpl<$Res>
    extends _$PexelsSearchResponseCopyWithImpl<$Res, _$PexelsSearchResponseImpl>
    implements _$$PexelsSearchResponseImplCopyWith<$Res> {
  __$$PexelsSearchResponseImplCopyWithImpl(_$PexelsSearchResponseImpl _value,
      $Res Function(_$PexelsSearchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PexelsSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
    Object? page = null,
    Object? perPage = null,
    Object? photos = null,
    Object? nextPage = freezed,
  }) {
    return _then(_$PexelsSearchResponseImpl(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<PexelsPhoto>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PexelsSearchResponseImpl implements _PexelsSearchResponse {
  const _$PexelsSearchResponseImpl(
      {@JsonKey(name: 'total_results') required this.totalResults,
      required this.page,
      @JsonKey(name: 'per_page') required this.perPage,
      required final List<PexelsPhoto> photos,
      @JsonKey(name: 'next_page') this.nextPage})
      : _photos = photos;

  factory _$PexelsSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PexelsSearchResponseImplFromJson(json);

  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  @override
  final int page;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  final List<PexelsPhoto> _photos;
  @override
  List<PexelsPhoto> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @JsonKey(name: 'next_page')
  final String? nextPage;

  @override
  String toString() {
    return 'PexelsSearchResponse(totalResults: $totalResults, page: $page, perPage: $perPage, photos: $photos, nextPage: $nextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PexelsSearchResponseImpl &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalResults, page, perPage,
      const DeepCollectionEquality().hash(_photos), nextPage);

  /// Create a copy of PexelsSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PexelsSearchResponseImplCopyWith<_$PexelsSearchResponseImpl>
      get copyWith =>
          __$$PexelsSearchResponseImplCopyWithImpl<_$PexelsSearchResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PexelsSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _PexelsSearchResponse implements PexelsSearchResponse {
  const factory _PexelsSearchResponse(
          {@JsonKey(name: 'total_results') required final int totalResults,
          required final int page,
          @JsonKey(name: 'per_page') required final int perPage,
          required final List<PexelsPhoto> photos,
          @JsonKey(name: 'next_page') final String? nextPage}) =
      _$PexelsSearchResponseImpl;

  factory _PexelsSearchResponse.fromJson(Map<String, dynamic> json) =
      _$PexelsSearchResponseImpl.fromJson;

  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  int get page;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  List<PexelsPhoto> get photos;
  @override
  @JsonKey(name: 'next_page')
  String? get nextPage;

  /// Create a copy of PexelsSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PexelsSearchResponseImplCopyWith<_$PexelsSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PexelsPhoto _$PexelsPhotoFromJson(Map<String, dynamic> json) {
  return _PexelsPhoto.fromJson(json);
}

/// @nodoc
mixin _$PexelsPhoto {
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
  String? get avgColor => throw _privateConstructorUsedError;
  PexelsSrc get src => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;
  String? get alt => throw _privateConstructorUsedError;

  /// Serializes this PexelsPhoto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PexelsPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PexelsPhotoCopyWith<PexelsPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PexelsPhotoCopyWith<$Res> {
  factory $PexelsPhotoCopyWith(
          PexelsPhoto value, $Res Function(PexelsPhoto) then) =
      _$PexelsPhotoCopyWithImpl<$Res, PexelsPhoto>;
  @useResult
  $Res call(
      {int id,
      int width,
      int height,
      String url,
      String photographer,
      @JsonKey(name: 'photographer_url') String photographerUrl,
      @JsonKey(name: 'photographer_id') int photographerId,
      @JsonKey(name: 'avg_color') String? avgColor,
      PexelsSrc src,
      bool liked,
      String? alt});

  $PexelsSrcCopyWith<$Res> get src;
}

/// @nodoc
class _$PexelsPhotoCopyWithImpl<$Res, $Val extends PexelsPhoto>
    implements $PexelsPhotoCopyWith<$Res> {
  _$PexelsPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PexelsPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? width = null,
    Object? height = null,
    Object? url = null,
    Object? photographer = null,
    Object? photographerUrl = null,
    Object? photographerId = null,
    Object? avgColor = freezed,
    Object? src = null,
    Object? liked = null,
    Object? alt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: null == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      photographerUrl: null == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photographerId: null == photographerId
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int,
      avgColor: freezed == avgColor
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as PexelsSrc,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PexelsPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PexelsSrcCopyWith<$Res> get src {
    return $PexelsSrcCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PexelsPhotoImplCopyWith<$Res>
    implements $PexelsPhotoCopyWith<$Res> {
  factory _$$PexelsPhotoImplCopyWith(
          _$PexelsPhotoImpl value, $Res Function(_$PexelsPhotoImpl) then) =
      __$$PexelsPhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int width,
      int height,
      String url,
      String photographer,
      @JsonKey(name: 'photographer_url') String photographerUrl,
      @JsonKey(name: 'photographer_id') int photographerId,
      @JsonKey(name: 'avg_color') String? avgColor,
      PexelsSrc src,
      bool liked,
      String? alt});

  @override
  $PexelsSrcCopyWith<$Res> get src;
}

/// @nodoc
class __$$PexelsPhotoImplCopyWithImpl<$Res>
    extends _$PexelsPhotoCopyWithImpl<$Res, _$PexelsPhotoImpl>
    implements _$$PexelsPhotoImplCopyWith<$Res> {
  __$$PexelsPhotoImplCopyWithImpl(
      _$PexelsPhotoImpl _value, $Res Function(_$PexelsPhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PexelsPhoto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? width = null,
    Object? height = null,
    Object? url = null,
    Object? photographer = null,
    Object? photographerUrl = null,
    Object? photographerId = null,
    Object? avgColor = freezed,
    Object? src = null,
    Object? liked = null,
    Object? alt = freezed,
  }) {
    return _then(_$PexelsPhotoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: null == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String,
      photographerUrl: null == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photographerId: null == photographerId
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int,
      avgColor: freezed == avgColor
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as PexelsSrc,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PexelsPhotoImpl implements _PexelsPhoto {
  const _$PexelsPhotoImpl(
      {required this.id,
      required this.width,
      required this.height,
      required this.url,
      required this.photographer,
      @JsonKey(name: 'photographer_url') required this.photographerUrl,
      @JsonKey(name: 'photographer_id') required this.photographerId,
      @JsonKey(name: 'avg_color') this.avgColor,
      required this.src,
      required this.liked,
      this.alt});

  factory _$PexelsPhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PexelsPhotoImplFromJson(json);

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
  final String? avgColor;
  @override
  final PexelsSrc src;
  @override
  final bool liked;
  @override
  final String? alt;

  @override
  String toString() {
    return 'PexelsPhoto(id: $id, width: $width, height: $height, url: $url, photographer: $photographer, photographerUrl: $photographerUrl, photographerId: $photographerId, avgColor: $avgColor, src: $src, liked: $liked, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PexelsPhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.photographerUrl, photographerUrl) ||
                other.photographerUrl == photographerUrl) &&
            (identical(other.photographerId, photographerId) ||
                other.photographerId == photographerId) &&
            (identical(other.avgColor, avgColor) ||
                other.avgColor == avgColor) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, width, height, url,
      photographer, photographerUrl, photographerId, avgColor, src, liked, alt);

  /// Create a copy of PexelsPhoto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PexelsPhotoImplCopyWith<_$PexelsPhotoImpl> get copyWith =>
      __$$PexelsPhotoImplCopyWithImpl<_$PexelsPhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PexelsPhotoImplToJson(
      this,
    );
  }
}

abstract class _PexelsPhoto implements PexelsPhoto {
  const factory _PexelsPhoto(
      {required final int id,
      required final int width,
      required final int height,
      required final String url,
      required final String photographer,
      @JsonKey(name: 'photographer_url') required final String photographerUrl,
      @JsonKey(name: 'photographer_id') required final int photographerId,
      @JsonKey(name: 'avg_color') final String? avgColor,
      required final PexelsSrc src,
      required final bool liked,
      final String? alt}) = _$PexelsPhotoImpl;

  factory _PexelsPhoto.fromJson(Map<String, dynamic> json) =
      _$PexelsPhotoImpl.fromJson;

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
  String? get avgColor;
  @override
  PexelsSrc get src;
  @override
  bool get liked;
  @override
  String? get alt;

  /// Create a copy of PexelsPhoto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PexelsPhotoImplCopyWith<_$PexelsPhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PexelsSrc _$PexelsSrcFromJson(Map<String, dynamic> json) {
  return _PexelsSrc.fromJson(json);
}

/// @nodoc
mixin _$PexelsSrc {
  String get original => throw _privateConstructorUsedError;
  @JsonKey(name: 'large2x')
  String? get large2x => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;
  String? get medium => throw _privateConstructorUsedError;
  String? get small => throw _privateConstructorUsedError;
  String? get portrait => throw _privateConstructorUsedError;
  String? get landscape => throw _privateConstructorUsedError;
  String? get tiny => throw _privateConstructorUsedError;

  /// Serializes this PexelsSrc to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PexelsSrc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PexelsSrcCopyWith<PexelsSrc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PexelsSrcCopyWith<$Res> {
  factory $PexelsSrcCopyWith(PexelsSrc value, $Res Function(PexelsSrc) then) =
      _$PexelsSrcCopyWithImpl<$Res, PexelsSrc>;
  @useResult
  $Res call(
      {String original,
      @JsonKey(name: 'large2x') String? large2x,
      String? large,
      String? medium,
      String? small,
      String? portrait,
      String? landscape,
      String? tiny});
}

/// @nodoc
class _$PexelsSrcCopyWithImpl<$Res, $Val extends PexelsSrc>
    implements $PexelsSrcCopyWith<$Res> {
  _$PexelsSrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PexelsSrc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? large2x = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large2x: freezed == large2x
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: freezed == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: freezed == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PexelsSrcImplCopyWith<$Res>
    implements $PexelsSrcCopyWith<$Res> {
  factory _$$PexelsSrcImplCopyWith(
          _$PexelsSrcImpl value, $Res Function(_$PexelsSrcImpl) then) =
      __$$PexelsSrcImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String original,
      @JsonKey(name: 'large2x') String? large2x,
      String? large,
      String? medium,
      String? small,
      String? portrait,
      String? landscape,
      String? tiny});
}

/// @nodoc
class __$$PexelsSrcImplCopyWithImpl<$Res>
    extends _$PexelsSrcCopyWithImpl<$Res, _$PexelsSrcImpl>
    implements _$$PexelsSrcImplCopyWith<$Res> {
  __$$PexelsSrcImplCopyWithImpl(
      _$PexelsSrcImpl _value, $Res Function(_$PexelsSrcImpl) _then)
      : super(_value, _then);

  /// Create a copy of PexelsSrc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? large2x = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_$PexelsSrcImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large2x: freezed == large2x
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: freezed == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: freezed == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PexelsSrcImpl implements _PexelsSrc {
  const _$PexelsSrcImpl(
      {required this.original,
      @JsonKey(name: 'large2x') this.large2x,
      this.large,
      this.medium,
      this.small,
      this.portrait,
      this.landscape,
      this.tiny});

  factory _$PexelsSrcImpl.fromJson(Map<String, dynamic> json) =>
      _$$PexelsSrcImplFromJson(json);

  @override
  final String original;
  @override
  @JsonKey(name: 'large2x')
  final String? large2x;
  @override
  final String? large;
  @override
  final String? medium;
  @override
  final String? small;
  @override
  final String? portrait;
  @override
  final String? landscape;
  @override
  final String? tiny;

  @override
  String toString() {
    return 'PexelsSrc(original: $original, large2x: $large2x, large: $large, medium: $medium, small: $small, portrait: $portrait, landscape: $landscape, tiny: $tiny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PexelsSrcImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.large2x, large2x) || other.large2x == large2x) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.portrait, portrait) ||
                other.portrait == portrait) &&
            (identical(other.landscape, landscape) ||
                other.landscape == landscape) &&
            (identical(other.tiny, tiny) || other.tiny == tiny));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, original, large2x, large, medium,
      small, portrait, landscape, tiny);

  /// Create a copy of PexelsSrc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PexelsSrcImplCopyWith<_$PexelsSrcImpl> get copyWith =>
      __$$PexelsSrcImplCopyWithImpl<_$PexelsSrcImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PexelsSrcImplToJson(
      this,
    );
  }
}

abstract class _PexelsSrc implements PexelsSrc {
  const factory _PexelsSrc(
      {required final String original,
      @JsonKey(name: 'large2x') final String? large2x,
      final String? large,
      final String? medium,
      final String? small,
      final String? portrait,
      final String? landscape,
      final String? tiny}) = _$PexelsSrcImpl;

  factory _PexelsSrc.fromJson(Map<String, dynamic> json) =
      _$PexelsSrcImpl.fromJson;

  @override
  String get original;
  @override
  @JsonKey(name: 'large2x')
  String? get large2x;
  @override
  String? get large;
  @override
  String? get medium;
  @override
  String? get small;
  @override
  String? get portrait;
  @override
  String? get landscape;
  @override
  String? get tiny;

  /// Create a copy of PexelsSrc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PexelsSrcImplCopyWith<_$PexelsSrcImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
