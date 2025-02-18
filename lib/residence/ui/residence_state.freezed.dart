// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'residence_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResidenceState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReadyData => throw _privateConstructorUsedError;
  List<ResidenceItem> get residenceItems => throw _privateConstructorUsedError;

  /// Create a copy of ResidenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResidenceStateCopyWith<ResidenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidenceStateCopyWith<$Res> {
  factory $ResidenceStateCopyWith(
          ResidenceState value, $Res Function(ResidenceState) then) =
      _$ResidenceStateCopyWithImpl<$Res, ResidenceState>;
  @useResult
  $Res call(
      {bool isLoading, bool isReadyData, List<ResidenceItem> residenceItems});
}

/// @nodoc
class _$ResidenceStateCopyWithImpl<$Res, $Val extends ResidenceState>
    implements $ResidenceStateCopyWith<$Res> {
  _$ResidenceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResidenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isReadyData = null,
    Object? residenceItems = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: null == isReadyData
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      residenceItems: null == residenceItems
          ? _value.residenceItems
          : residenceItems // ignore: cast_nullable_to_non_nullable
              as List<ResidenceItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResidenceStateImplCopyWith<$Res>
    implements $ResidenceStateCopyWith<$Res> {
  factory _$$ResidenceStateImplCopyWith(_$ResidenceStateImpl value,
          $Res Function(_$ResidenceStateImpl) then) =
      __$$ResidenceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool isReadyData, List<ResidenceItem> residenceItems});
}

/// @nodoc
class __$$ResidenceStateImplCopyWithImpl<$Res>
    extends _$ResidenceStateCopyWithImpl<$Res, _$ResidenceStateImpl>
    implements _$$ResidenceStateImplCopyWith<$Res> {
  __$$ResidenceStateImplCopyWithImpl(
      _$ResidenceStateImpl _value, $Res Function(_$ResidenceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResidenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isReadyData = null,
    Object? residenceItems = null,
  }) {
    return _then(_$ResidenceStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: null == isReadyData
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      residenceItems: null == residenceItems
          ? _value._residenceItems
          : residenceItems // ignore: cast_nullable_to_non_nullable
              as List<ResidenceItem>,
    ));
  }
}

/// @nodoc

class _$ResidenceStateImpl implements _ResidenceState {
  const _$ResidenceStateImpl(
      {this.isLoading = false,
      this.isReadyData = false,
      final List<ResidenceItem> residenceItems = const <ResidenceItem>[]})
      : _residenceItems = residenceItems;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isReadyData;
  final List<ResidenceItem> _residenceItems;
  @override
  @JsonKey()
  List<ResidenceItem> get residenceItems {
    if (_residenceItems is EqualUnmodifiableListView) return _residenceItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_residenceItems);
  }

  @override
  String toString() {
    return 'ResidenceState(isLoading: $isLoading, isReadyData: $isReadyData, residenceItems: $residenceItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidenceStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isReadyData, isReadyData) ||
                other.isReadyData == isReadyData) &&
            const DeepCollectionEquality()
                .equals(other._residenceItems, _residenceItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isReadyData,
      const DeepCollectionEquality().hash(_residenceItems));

  /// Create a copy of ResidenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResidenceStateImplCopyWith<_$ResidenceStateImpl> get copyWith =>
      __$$ResidenceStateImplCopyWithImpl<_$ResidenceStateImpl>(
          this, _$identity);
}

abstract class _ResidenceState implements ResidenceState {
  const factory _ResidenceState(
      {final bool isLoading,
      final bool isReadyData,
      final List<ResidenceItem> residenceItems}) = _$ResidenceStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<ResidenceItem> get residenceItems;

  /// Create a copy of ResidenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResidenceStateImplCopyWith<_$ResidenceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResidenceItem _$ResidenceItemFromJson(Map<String, dynamic> json) {
  return _ResidenceItem.fromJson(json);
}

/// @nodoc
mixin _$ResidenceItem {
  @JsonKey(name: 'imageUrl')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'floorPlanUrl')
  String get floorPlanUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'propertyTitle')
  dynamic get propertyTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  dynamic get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'access')
  dynamic get access => throw _privateConstructorUsedError;
  @JsonKey(name: 'roomDetails')
  dynamic get roomDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'buildingInfo')
  dynamic get buildingInfo => throw _privateConstructorUsedError;

  /// Serializes this ResidenceItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResidenceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResidenceItemCopyWith<ResidenceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidenceItemCopyWith<$Res> {
  factory $ResidenceItemCopyWith(
          ResidenceItem value, $Res Function(ResidenceItem) then) =
      _$ResidenceItemCopyWithImpl<$Res, ResidenceItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'imageUrl') String imageUrl,
      @JsonKey(name: 'floorPlanUrl') String floorPlanUrl,
      @JsonKey(name: 'propertyTitle') dynamic propertyTitle,
      @JsonKey(name: 'price') dynamic price,
      @JsonKey(name: 'access') dynamic access,
      @JsonKey(name: 'roomDetails') dynamic roomDetails,
      @JsonKey(name: 'buildingInfo') dynamic buildingInfo});
}

/// @nodoc
class _$ResidenceItemCopyWithImpl<$Res, $Val extends ResidenceItem>
    implements $ResidenceItemCopyWith<$Res> {
  _$ResidenceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResidenceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? floorPlanUrl = null,
    Object? propertyTitle = freezed,
    Object? price = freezed,
    Object? access = freezed,
    Object? roomDetails = freezed,
    Object? buildingInfo = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      floorPlanUrl: null == floorPlanUrl
          ? _value.floorPlanUrl
          : floorPlanUrl // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTitle: freezed == propertyTitle
          ? _value.propertyTitle
          : propertyTitle // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as dynamic,
      roomDetails: freezed == roomDetails
          ? _value.roomDetails
          : roomDetails // ignore: cast_nullable_to_non_nullable
              as dynamic,
      buildingInfo: freezed == buildingInfo
          ? _value.buildingInfo
          : buildingInfo // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResidenceItemImplCopyWith<$Res>
    implements $ResidenceItemCopyWith<$Res> {
  factory _$$ResidenceItemImplCopyWith(
          _$ResidenceItemImpl value, $Res Function(_$ResidenceItemImpl) then) =
      __$$ResidenceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'imageUrl') String imageUrl,
      @JsonKey(name: 'floorPlanUrl') String floorPlanUrl,
      @JsonKey(name: 'propertyTitle') dynamic propertyTitle,
      @JsonKey(name: 'price') dynamic price,
      @JsonKey(name: 'access') dynamic access,
      @JsonKey(name: 'roomDetails') dynamic roomDetails,
      @JsonKey(name: 'buildingInfo') dynamic buildingInfo});
}

/// @nodoc
class __$$ResidenceItemImplCopyWithImpl<$Res>
    extends _$ResidenceItemCopyWithImpl<$Res, _$ResidenceItemImpl>
    implements _$$ResidenceItemImplCopyWith<$Res> {
  __$$ResidenceItemImplCopyWithImpl(
      _$ResidenceItemImpl _value, $Res Function(_$ResidenceItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResidenceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? floorPlanUrl = null,
    Object? propertyTitle = freezed,
    Object? price = freezed,
    Object? access = freezed,
    Object? roomDetails = freezed,
    Object? buildingInfo = freezed,
  }) {
    return _then(_$ResidenceItemImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      floorPlanUrl: null == floorPlanUrl
          ? _value.floorPlanUrl
          : floorPlanUrl // ignore: cast_nullable_to_non_nullable
              as String,
      propertyTitle:
          freezed == propertyTitle ? _value.propertyTitle! : propertyTitle,
      price: freezed == price ? _value.price! : price,
      access: freezed == access ? _value.access! : access,
      roomDetails: freezed == roomDetails ? _value.roomDetails! : roomDetails,
      buildingInfo:
          freezed == buildingInfo ? _value.buildingInfo! : buildingInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResidenceItemImpl implements _ResidenceItem {
  const _$ResidenceItemImpl(
      {@JsonKey(name: 'imageUrl') this.imageUrl = '',
      @JsonKey(name: 'floorPlanUrl') this.floorPlanUrl = '',
      @JsonKey(name: 'propertyTitle') this.propertyTitle = '',
      @JsonKey(name: 'price') this.price = '',
      @JsonKey(name: 'access') this.access = '',
      @JsonKey(name: 'roomDetails') this.roomDetails = '',
      @JsonKey(name: 'buildingInfo') this.buildingInfo = ''});

  factory _$ResidenceItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResidenceItemImplFromJson(json);

  @override
  @JsonKey(name: 'imageUrl')
  final String imageUrl;
  @override
  @JsonKey(name: 'floorPlanUrl')
  final String floorPlanUrl;
  @override
  @JsonKey(name: 'propertyTitle')
  final dynamic propertyTitle;
  @override
  @JsonKey(name: 'price')
  final dynamic price;
  @override
  @JsonKey(name: 'access')
  final dynamic access;
  @override
  @JsonKey(name: 'roomDetails')
  final dynamic roomDetails;
  @override
  @JsonKey(name: 'buildingInfo')
  final dynamic buildingInfo;

  @override
  String toString() {
    return 'ResidenceItem(imageUrl: $imageUrl, floorPlanUrl: $floorPlanUrl, propertyTitle: $propertyTitle, price: $price, access: $access, roomDetails: $roomDetails, buildingInfo: $buildingInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidenceItemImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.floorPlanUrl, floorPlanUrl) ||
                other.floorPlanUrl == floorPlanUrl) &&
            const DeepCollectionEquality()
                .equals(other.propertyTitle, propertyTitle) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.access, access) &&
            const DeepCollectionEquality()
                .equals(other.roomDetails, roomDetails) &&
            const DeepCollectionEquality()
                .equals(other.buildingInfo, buildingInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      imageUrl,
      floorPlanUrl,
      const DeepCollectionEquality().hash(propertyTitle),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(access),
      const DeepCollectionEquality().hash(roomDetails),
      const DeepCollectionEquality().hash(buildingInfo));

  /// Create a copy of ResidenceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResidenceItemImplCopyWith<_$ResidenceItemImpl> get copyWith =>
      __$$ResidenceItemImplCopyWithImpl<_$ResidenceItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResidenceItemImplToJson(
      this,
    );
  }
}

abstract class _ResidenceItem implements ResidenceItem {
  const factory _ResidenceItem(
          {@JsonKey(name: 'imageUrl') final String imageUrl,
          @JsonKey(name: 'floorPlanUrl') final String floorPlanUrl,
          @JsonKey(name: 'propertyTitle') final dynamic propertyTitle,
          @JsonKey(name: 'price') final dynamic price,
          @JsonKey(name: 'access') final dynamic access,
          @JsonKey(name: 'roomDetails') final dynamic roomDetails,
          @JsonKey(name: 'buildingInfo') final dynamic buildingInfo}) =
      _$ResidenceItemImpl;

  factory _ResidenceItem.fromJson(Map<String, dynamic> json) =
      _$ResidenceItemImpl.fromJson;

  @override
  @JsonKey(name: 'imageUrl')
  String get imageUrl;
  @override
  @JsonKey(name: 'floorPlanUrl')
  String get floorPlanUrl;
  @override
  @JsonKey(name: 'propertyTitle')
  dynamic get propertyTitle;
  @override
  @JsonKey(name: 'price')
  dynamic get price;
  @override
  @JsonKey(name: 'access')
  dynamic get access;
  @override
  @JsonKey(name: 'roomDetails')
  dynamic get roomDetails;
  @override
  @JsonKey(name: 'buildingInfo')
  dynamic get buildingInfo;

  /// Create a copy of ResidenceItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResidenceItemImplCopyWith<_$ResidenceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
