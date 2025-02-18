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
    @JsonKey(name: 'imageUrl') @Default('') String imageUrl,
    @JsonKey(name: 'floorPlanUrl') @Default('') String floorPlanUrl,
    @JsonKey(name: 'propertyTitle') @Default('') propertyTitle,
    @JsonKey(name: 'price') @Default('') price,
    @JsonKey(name: 'access') @Default('') access,
    @JsonKey(name: 'roomDetails') @Default('') roomDetails,
    @JsonKey(name: 'buildingInfo') @Default('') buildingInfo,
  }) = _ResidenceItem;

  factory ResidenceItem.fromJson(Map<String, dynamic> json) =>
      _$ResidenceItemFromJson(json);
}
