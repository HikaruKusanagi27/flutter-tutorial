import 'package:freezed_annotation/freezed_annotation.dart';
part 'youtube_state.freezed.dart';
part 'youtube_state.g.dart';

@freezed
class YoutubeState with _$YoutubeState {
  const factory YoutubeState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    @Default(<YoutubeItem>[]) List<YoutubeItem> youtubeItems,
  }) = _YoutubeState;
}

@freezed
class YoutubeItem with _$YoutubeItem {
  const factory YoutubeItem({
    @JsonKey(name: 'imagePath') String? imagePath,
    @JsonKey(name: 'iconPath') String? iconPath,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'subTitle') String? subTitle,
  }) = _YoutubeItem;

  factory YoutubeItem.fromJson(Map<String, dynamic> json) =>
      _$YoutubeItemFromJson(json);
}

// @freezed
// class YoutubeUser with _$YoutubeUser {
//   const factory YoutubeUser({
//     @JsonKey(name: 'profile_image_url') String? profileImageUrl,
//   }) = _YoutubeUser;

//   factory YoutubeUser.fromJson(Map<String, dynamic> json) =>
//       _$YoutubeUserFromJson(json);
// }
