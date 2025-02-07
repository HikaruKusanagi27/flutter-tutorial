import 'package:freezed_annotation/freezed_annotation.dart';

part 'residence_state.freezed.dart';

part 'residence_state.g.dart';

@freezed
class ResidenceState with _$ResidenceState {
  const factory ResidenceState({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    @Default(<ResidenceItem>[]) List<ResidenceItem> residenceItems,
  }) = _ResidenceState;
}

@freezed
class ResidenceItem with _$ResidenceItem {
  const factory ResidenceItem({
    @JsonKey(name: 'imagePath') @Default('') String imagePath,
    @JsonKey(name: 'madoriPath') @Default('') String madoriPathrl,
    @JsonKey(name: 'title') @Default('') title,
    @JsonKey(name: 'subTitle') @Default('') subTitle,
    @JsonKey(name: 'stationName') @Default('') stationName,
    @JsonKey(name: 'amount') @Default('') amount,
    @JsonKey(name: 'floor') @Default('') floor,
  }) = _ResidenceItem;

  factory ResidenceItem.fromJson(Map<String, dynamic> json) =>
      _$ResidenceItemFromJson(json);
}
