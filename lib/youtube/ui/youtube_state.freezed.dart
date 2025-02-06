// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'youtube_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YoutubeState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReadyData => throw _privateConstructorUsedError;
  List<YoutubeItem> get youtubeItems => throw _privateConstructorUsedError;

  /// Create a copy of YoutubeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YoutubeStateCopyWith<YoutubeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeStateCopyWith<$Res> {
  factory $YoutubeStateCopyWith(
          YoutubeState value, $Res Function(YoutubeState) then) =
      _$YoutubeStateCopyWithImpl<$Res, YoutubeState>;
  @useResult
  $Res call({bool isLoading, bool isReadyData, List<YoutubeItem> youtubeItems});
}

/// @nodoc
class _$YoutubeStateCopyWithImpl<$Res, $Val extends YoutubeState>
    implements $YoutubeStateCopyWith<$Res> {
  _$YoutubeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YoutubeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isReadyData = null,
    Object? youtubeItems = null,
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
      youtubeItems: null == youtubeItems
          ? _value.youtubeItems
          : youtubeItems // ignore: cast_nullable_to_non_nullable
              as List<YoutubeItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YoutubeStateImplCopyWith<$Res>
    implements $YoutubeStateCopyWith<$Res> {
  factory _$$YoutubeStateImplCopyWith(
          _$YoutubeStateImpl value, $Res Function(_$YoutubeStateImpl) then) =
      __$$YoutubeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isReadyData, List<YoutubeItem> youtubeItems});
}

/// @nodoc
class __$$YoutubeStateImplCopyWithImpl<$Res>
    extends _$YoutubeStateCopyWithImpl<$Res, _$YoutubeStateImpl>
    implements _$$YoutubeStateImplCopyWith<$Res> {
  __$$YoutubeStateImplCopyWithImpl(
      _$YoutubeStateImpl _value, $Res Function(_$YoutubeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of YoutubeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isReadyData = null,
    Object? youtubeItems = null,
  }) {
    return _then(_$YoutubeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: null == isReadyData
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      youtubeItems: null == youtubeItems
          ? _value._youtubeItems
          : youtubeItems // ignore: cast_nullable_to_non_nullable
              as List<YoutubeItem>,
    ));
  }
}

/// @nodoc

class _$YoutubeStateImpl implements _YoutubeState {
  const _$YoutubeStateImpl(
      {this.isLoading = false,
      this.isReadyData = false,
      final List<YoutubeItem> youtubeItems = const <YoutubeItem>[]})
      : _youtubeItems = youtubeItems;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isReadyData;
  final List<YoutubeItem> _youtubeItems;
  @override
  @JsonKey()
  List<YoutubeItem> get youtubeItems {
    if (_youtubeItems is EqualUnmodifiableListView) return _youtubeItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_youtubeItems);
  }

  @override
  String toString() {
    return 'YoutubeState(isLoading: $isLoading, isReadyData: $isReadyData, youtubeItems: $youtubeItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isReadyData, isReadyData) ||
                other.isReadyData == isReadyData) &&
            const DeepCollectionEquality()
                .equals(other._youtubeItems, _youtubeItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isReadyData,
      const DeepCollectionEquality().hash(_youtubeItems));

  /// Create a copy of YoutubeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeStateImplCopyWith<_$YoutubeStateImpl> get copyWith =>
      __$$YoutubeStateImplCopyWithImpl<_$YoutubeStateImpl>(this, _$identity);
}

abstract class _YoutubeState implements YoutubeState {
  const factory _YoutubeState(
      {final bool isLoading,
      final bool isReadyData,
      final List<YoutubeItem> youtubeItems}) = _$YoutubeStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<YoutubeItem> get youtubeItems;

  /// Create a copy of YoutubeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YoutubeStateImplCopyWith<_$YoutubeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YoutubeItem _$YoutubeItemFromJson(Map<String, dynamic> json) {
  return _YoutubeItem.fromJson(json);
}

/// @nodoc
mixin _$YoutubeItem {
  @JsonKey(name: 'imagePath')
  String get imagePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'iconPath')
  String get iconPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'channelName')
  String get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'numOfViews')
  int get numOfViews => throw _privateConstructorUsedError;
  @JsonKey(name: 'daysAgo')
  int get daysAgo => throw _privateConstructorUsedError;

  /// Serializes this YoutubeItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $YoutubeItemCopyWith<YoutubeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeItemCopyWith<$Res> {
  factory $YoutubeItemCopyWith(
          YoutubeItem value, $Res Function(YoutubeItem) then) =
      _$YoutubeItemCopyWithImpl<$Res, YoutubeItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'imagePath') String imagePath,
      @JsonKey(name: 'iconPath') String iconPath,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'channelName') String channelName,
      @JsonKey(name: 'numOfViews') int numOfViews,
      @JsonKey(name: 'daysAgo') int daysAgo});
}

/// @nodoc
class _$YoutubeItemCopyWithImpl<$Res, $Val extends YoutubeItem>
    implements $YoutubeItemCopyWith<$Res> {
  _$YoutubeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? iconPath = null,
    Object? title = null,
    Object? channelName = null,
    Object? numOfViews = null,
    Object? daysAgo = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      numOfViews: null == numOfViews
          ? _value.numOfViews
          : numOfViews // ignore: cast_nullable_to_non_nullable
              as int,
      daysAgo: null == daysAgo
          ? _value.daysAgo
          : daysAgo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YoutubeItemImplCopyWith<$Res>
    implements $YoutubeItemCopyWith<$Res> {
  factory _$$YoutubeItemImplCopyWith(
          _$YoutubeItemImpl value, $Res Function(_$YoutubeItemImpl) then) =
      __$$YoutubeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'imagePath') String imagePath,
      @JsonKey(name: 'iconPath') String iconPath,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'channelName') String channelName,
      @JsonKey(name: 'numOfViews') int numOfViews,
      @JsonKey(name: 'daysAgo') int daysAgo});
}

/// @nodoc
class __$$YoutubeItemImplCopyWithImpl<$Res>
    extends _$YoutubeItemCopyWithImpl<$Res, _$YoutubeItemImpl>
    implements _$$YoutubeItemImplCopyWith<$Res> {
  __$$YoutubeItemImplCopyWithImpl(
      _$YoutubeItemImpl _value, $Res Function(_$YoutubeItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? iconPath = null,
    Object? title = null,
    Object? channelName = null,
    Object? numOfViews = null,
    Object? daysAgo = null,
  }) {
    return _then(_$YoutubeItemImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      numOfViews: null == numOfViews
          ? _value.numOfViews
          : numOfViews // ignore: cast_nullable_to_non_nullable
              as int,
      daysAgo: null == daysAgo
          ? _value.daysAgo
          : daysAgo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YoutubeItemImpl implements _YoutubeItem {
  const _$YoutubeItemImpl(
      {@JsonKey(name: 'imagePath') required this.imagePath,
      @JsonKey(name: 'iconPath') required this.iconPath,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'channelName') required this.channelName,
      @JsonKey(name: 'numOfViews') required this.numOfViews,
      @JsonKey(name: 'daysAgo') required this.daysAgo});

  factory _$YoutubeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$YoutubeItemImplFromJson(json);

  @override
  @JsonKey(name: 'imagePath')
  final String imagePath;
  @override
  @JsonKey(name: 'iconPath')
  final String iconPath;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'channelName')
  final String channelName;
  @override
  @JsonKey(name: 'numOfViews')
  final int numOfViews;
  @override
  @JsonKey(name: 'daysAgo')
  final int daysAgo;

  @override
  String toString() {
    return 'YoutubeItem(imagePath: $imagePath, iconPath: $iconPath, title: $title, channelName: $channelName, numOfViews: $numOfViews, daysAgo: $daysAgo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoutubeItemImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.numOfViews, numOfViews) ||
                other.numOfViews == numOfViews) &&
            (identical(other.daysAgo, daysAgo) || other.daysAgo == daysAgo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, iconPath, title,
      channelName, numOfViews, daysAgo);

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$YoutubeItemImplCopyWith<_$YoutubeItemImpl> get copyWith =>
      __$$YoutubeItemImplCopyWithImpl<_$YoutubeItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YoutubeItemImplToJson(
      this,
    );
  }
}

abstract class _YoutubeItem implements YoutubeItem {
  const factory _YoutubeItem(
          {@JsonKey(name: 'imagePath') required final String imagePath,
          @JsonKey(name: 'iconPath') required final String iconPath,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'channelName') required final String channelName,
          @JsonKey(name: 'numOfViews') required final int numOfViews,
          @JsonKey(name: 'daysAgo') required final int daysAgo}) =
      _$YoutubeItemImpl;

  factory _YoutubeItem.fromJson(Map<String, dynamic> json) =
      _$YoutubeItemImpl.fromJson;

  @override
  @JsonKey(name: 'imagePath')
  String get imagePath;
  @override
  @JsonKey(name: 'iconPath')
  String get iconPath;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'channelName')
  String get channelName;
  @override
  @JsonKey(name: 'numOfViews')
  int get numOfViews;
  @override
  @JsonKey(name: 'daysAgo')
  int get daysAgo;

  /// Create a copy of YoutubeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$YoutubeItemImplCopyWith<_$YoutubeItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
