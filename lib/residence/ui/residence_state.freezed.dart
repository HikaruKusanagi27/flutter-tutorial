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
  @JsonKey(name: 'imagePath')
  String get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'madoriPath')
  String get madoriPathrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  dynamic get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'subTitle')
  dynamic get subTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'stationName')
  dynamic get stationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  dynamic get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor')
  dynamic get floor => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'imagePath') String imagePath,
      @JsonKey(name: 'madoriPath') String madoriPathrl,
      @JsonKey(name: 'title') dynamic title,
      @JsonKey(name: 'subTitle') dynamic subTitle,
      @JsonKey(name: 'stationName') dynamic stationName,
      @JsonKey(name: 'amount') dynamic amount,
      @JsonKey(name: 'floor') dynamic floor});
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
    Object? imagePath = null,
    Object? madoriPathrl = null,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? stationName = freezed,
    Object? amount = freezed,
    Object? floor = freezed,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      madoriPathrl: null == madoriPathrl
          ? _value.madoriPathrl
          : madoriPathrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stationName: freezed == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'imagePath') String imagePath,
      @JsonKey(name: 'madoriPath') String madoriPathrl,
      @JsonKey(name: 'title') dynamic title,
      @JsonKey(name: 'subTitle') dynamic subTitle,
      @JsonKey(name: 'stationName') dynamic stationName,
      @JsonKey(name: 'amount') dynamic amount,
      @JsonKey(name: 'floor') dynamic floor});
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
    Object? imagePath = null,
    Object? madoriPathrl = null,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? stationName = freezed,
    Object? amount = freezed,
    Object? floor = freezed,
  }) {
    return _then(_$ResidenceItemImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      madoriPathrl: null == madoriPathrl
          ? _value.madoriPathrl
          : madoriPathrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title ? _value.title! : title,
      subTitle: freezed == subTitle ? _value.subTitle! : subTitle,
      stationName: freezed == stationName ? _value.stationName! : stationName,
      amount: freezed == amount ? _value.amount! : amount,
      floor: freezed == floor ? _value.floor! : floor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResidenceItemImpl implements _ResidenceItem {
  const _$ResidenceItemImpl(
      {@JsonKey(name: 'imagePath') this.imagePath = '',
      @JsonKey(name: 'madoriPath') this.madoriPathrl = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'subTitle') this.subTitle = '',
      @JsonKey(name: 'stationName') this.stationName = '',
      @JsonKey(name: 'amount') this.amount = '',
      @JsonKey(name: 'floor') this.floor = ''});

  factory _$ResidenceItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResidenceItemImplFromJson(json);

  @override
  @JsonKey(name: 'imagePath')
  final String imagePath;
  @override
  @JsonKey(name: 'madoriPath')
  final String madoriPathrl;
  @override
  @JsonKey(name: 'title')
  final dynamic title;
  @override
  @JsonKey(name: 'subTitle')
  final dynamic subTitle;
  @override
  @JsonKey(name: 'stationName')
  final dynamic stationName;
  @override
  @JsonKey(name: 'amount')
  final dynamic amount;
  @override
  @JsonKey(name: 'floor')
  final dynamic floor;

  @override
  String toString() {
    return 'ResidenceItem(imagePath: $imagePath, madoriPathrl: $madoriPathrl, title: $title, subTitle: $subTitle, stationName: $stationName, amount: $amount, floor: $floor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidenceItemImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.madoriPathrl, madoriPathrl) ||
                other.madoriPathrl == madoriPathrl) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subTitle, subTitle) &&
            const DeepCollectionEquality()
                .equals(other.stationName, stationName) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.floor, floor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      imagePath,
      madoriPathrl,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subTitle),
      const DeepCollectionEquality().hash(stationName),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(floor));

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
      {@JsonKey(name: 'imagePath') final String imagePath,
      @JsonKey(name: 'madoriPath') final String madoriPathrl,
      @JsonKey(name: 'title') final dynamic title,
      @JsonKey(name: 'subTitle') final dynamic subTitle,
      @JsonKey(name: 'stationName') final dynamic stationName,
      @JsonKey(name: 'amount') final dynamic amount,
      @JsonKey(name: 'floor') final dynamic floor}) = _$ResidenceItemImpl;

  factory _ResidenceItem.fromJson(Map<String, dynamic> json) =
      _$ResidenceItemImpl.fromJson;

  @override
  @JsonKey(name: 'imagePath')
  String get imagePath;
  @override
  @JsonKey(name: 'madoriPath')
  String get madoriPathrl;
  @override
  @JsonKey(name: 'title')
  dynamic get title;
  @override
  @JsonKey(name: 'subTitle')
  dynamic get subTitle;
  @override
  @JsonKey(name: 'stationName')
  dynamic get stationName;
  @override
  @JsonKey(name: 'amount')
  dynamic get amount;
  @override
  @JsonKey(name: 'floor')
  dynamic get floor;

  /// Create a copy of ResidenceItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResidenceItemImplCopyWith<_$ResidenceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
