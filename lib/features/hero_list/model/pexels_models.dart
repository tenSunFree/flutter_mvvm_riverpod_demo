import 'package:freezed_annotation/freezed_annotation.dart';

part 'pexels_models.freezed.dart';

part 'pexels_models.g.dart';

@freezed
class PexelsSearchResponse with _$PexelsSearchResponse {
  const factory PexelsSearchResponse({
    @JsonKey(name: 'total_results') required int totalResults,
    required int page,
    @JsonKey(name: 'per_page') required int perPage,
    required List<PexelsPhoto> photos,
    @JsonKey(name: 'next_page') String? nextPage,
  }) = _PexelsSearchResponse;

  factory PexelsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$PexelsSearchResponseFromJson(json);
}

@freezed
class PexelsPhoto with _$PexelsPhoto {
  const factory PexelsPhoto({
    required int id,
    required int width,
    required int height,
    required String url,
    required String photographer,
    @JsonKey(name: 'photographer_url') required String photographerUrl,
    @JsonKey(name: 'photographer_id') required int photographerId,
    @JsonKey(name: 'avg_color') String? avgColor,
    required PexelsSrc src,
    required bool liked,
    String? alt,
  }) = _PexelsPhoto;

  factory PexelsPhoto.fromJson(Map<String, dynamic> json) => _$PexelsPhotoFromJson(json);
}

@freezed
class PexelsSrc with _$PexelsSrc {
  const factory PexelsSrc({
    required String original,
    @JsonKey(name: 'large2x') String? large2x,
    String? large,
    String? medium,
    String? small,
    String? portrait,
    String? landscape,
    String? tiny,
  }) = _PexelsSrc;

  factory PexelsSrc.fromJson(Map<String, dynamic> json) => _$PexelsSrcFromJson(json);
}
