import 'package:freezed_annotation/freezed_annotation.dart';

part 'merucari_state.freezed.dart';

part 'merucari_state.g.dart';

@freezed
class MerucariState with _$MerucariState {
  const factory MerucariState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    @Default(<MerucariItem>[]) List<MerucariItem> merucariItems,
  }) = _MerucariState;
}

@freezed
class MerucariItem with _$MerucariItem {
  const factory MerucariItem({
    @JsonKey(name: 'imageUrl') @Default('') String imageUrl,
    @JsonKey(name: 'itemTitle') @Default('') String itemTitle,
    @JsonKey(name: 'price') @Default(0) int price,
    @JsonKey(name: 'peopleSearching') @Default('') String peopleSearching,
  }) = _MerucariItem;

  factory MerucariItem.fromJson(Map<String, dynamic> json) =>
      _$MerucariItemFromJson(json);
}
