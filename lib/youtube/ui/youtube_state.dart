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
    @JsonKey(name: 'imagePath') required String imagePath,
    @JsonKey(name: 'iconPath') required String iconPath,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'channelName') required String channelName,
    @JsonKey(name: 'numOfViews') required int numOfViews,
    @JsonKey(name: 'daysAgo') required int daysAgo,
  }) = _YoutubeItem;

  factory YoutubeItem.fromJson(Map<String, dynamic> json) =>
      _$YoutubeItemFromJson(json);
}
