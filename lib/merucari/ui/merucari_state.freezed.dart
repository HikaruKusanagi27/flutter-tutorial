// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merucari_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerucariState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReadyData => throw _privateConstructorUsedError;
  List<MerucariItem> get merucariItems => throw _privateConstructorUsedError;

  /// Create a copy of MerucariState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerucariStateCopyWith<MerucariState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerucariStateCopyWith<$Res> {
  factory $MerucariStateCopyWith(
          MerucariState value, $Res Function(MerucariState) then) =
      _$MerucariStateCopyWithImpl<$Res, MerucariState>;
  @useResult
  $Res call(
      {bool isLoading, bool isReadyData, List<MerucariItem> merucariItems});
}

/// @nodoc
class _$MerucariStateCopyWithImpl<$Res, $Val extends MerucariState>
    implements $MerucariStateCopyWith<$Res> {
  _$MerucariStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerucariState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isReadyData = null,
    Object? merucariItems = null,
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
      merucariItems: null == merucariItems
          ? _value.merucariItems
          : merucariItems // ignore: cast_nullable_to_non_nullable
              as List<MerucariItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerucariStateImplCopyWith<$Res>
    implements $MerucariStateCopyWith<$Res> {
  factory _$$MerucariStateImplCopyWith(
          _$MerucariStateImpl value, $Res Function(_$MerucariStateImpl) then) =
      __$$MerucariStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool isReadyData, List<MerucariItem> merucariItems});
}

/// @nodoc
class __$$MerucariStateImplCopyWithImpl<$Res>
    extends _$MerucariStateCopyWithImpl<$Res, _$MerucariStateImpl>
    implements _$$MerucariStateImplCopyWith<$Res> {
  __$$MerucariStateImplCopyWithImpl(
      _$MerucariStateImpl _value, $Res Function(_$MerucariStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerucariState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isReadyData = null,
    Object? merucariItems = null,
  }) {
    return _then(_$MerucariStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: null == isReadyData
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      merucariItems: null == merucariItems
          ? _value._merucariItems
          : merucariItems // ignore: cast_nullable_to_non_nullable
              as List<MerucariItem>,
    ));
  }
}

/// @nodoc

class _$MerucariStateImpl implements _MerucariState {
  const _$MerucariStateImpl(
      {this.isLoading = false,
      this.isReadyData = false,
      final List<MerucariItem> merucariItems = const <MerucariItem>[]})
      : _merucariItems = merucariItems;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isReadyData;
  final List<MerucariItem> _merucariItems;
  @override
  @JsonKey()
  List<MerucariItem> get merucariItems {
    if (_merucariItems is EqualUnmodifiableListView) return _merucariItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_merucariItems);
  }

  @override
  String toString() {
    return 'MerucariState(isLoading: $isLoading, isReadyData: $isReadyData, merucariItems: $merucariItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerucariStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isReadyData, isReadyData) ||
                other.isReadyData == isReadyData) &&
            const DeepCollectionEquality()
                .equals(other._merucariItems, _merucariItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isReadyData,
      const DeepCollectionEquality().hash(_merucariItems));

  /// Create a copy of MerucariState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerucariStateImplCopyWith<_$MerucariStateImpl> get copyWith =>
      __$$MerucariStateImplCopyWithImpl<_$MerucariStateImpl>(this, _$identity);
}

abstract class _MerucariState implements MerucariState {
  const factory _MerucariState(
      {final bool isLoading,
      final bool isReadyData,
      final List<MerucariItem> merucariItems}) = _$MerucariStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<MerucariItem> get merucariItems;

  /// Create a copy of MerucariState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerucariStateImplCopyWith<_$MerucariStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MerucariItem _$MerucariItemFromJson(Map<String, dynamic> json) {
  return _MerucariItem.fromJson(json);
}

/// @nodoc
mixin _$MerucariItem {
  @JsonKey(name: 'imageUrl')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemTitle')
  String get itemTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'peopleSearching')
  String get peopleSearching => throw _privateConstructorUsedError;

  /// Serializes this MerucariItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MerucariItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MerucariItemCopyWith<MerucariItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerucariItemCopyWith<$Res> {
  factory $MerucariItemCopyWith(
          MerucariItem value, $Res Function(MerucariItem) then) =
      _$MerucariItemCopyWithImpl<$Res, MerucariItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'imageUrl') String imageUrl,
      @JsonKey(name: 'itemTitle') String itemTitle,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'peopleSearching') String peopleSearching});
}

/// @nodoc
class _$MerucariItemCopyWithImpl<$Res, $Val extends MerucariItem>
    implements $MerucariItemCopyWith<$Res> {
  _$MerucariItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerucariItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? itemTitle = null,
    Object? price = null,
    Object? peopleSearching = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemTitle: null == itemTitle
          ? _value.itemTitle
          : itemTitle // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      peopleSearching: null == peopleSearching
          ? _value.peopleSearching
          : peopleSearching // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerucariItemImplCopyWith<$Res>
    implements $MerucariItemCopyWith<$Res> {
  factory _$$MerucariItemImplCopyWith(
          _$MerucariItemImpl value, $Res Function(_$MerucariItemImpl) then) =
      __$$MerucariItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'imageUrl') String imageUrl,
      @JsonKey(name: 'itemTitle') String itemTitle,
      @JsonKey(name: 'price') int price,
      @JsonKey(name: 'peopleSearching') String peopleSearching});
}

/// @nodoc
class __$$MerucariItemImplCopyWithImpl<$Res>
    extends _$MerucariItemCopyWithImpl<$Res, _$MerucariItemImpl>
    implements _$$MerucariItemImplCopyWith<$Res> {
  __$$MerucariItemImplCopyWithImpl(
      _$MerucariItemImpl _value, $Res Function(_$MerucariItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerucariItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? itemTitle = null,
    Object? price = null,
    Object? peopleSearching = null,
  }) {
    return _then(_$MerucariItemImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemTitle: null == itemTitle
          ? _value.itemTitle
          : itemTitle // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      peopleSearching: null == peopleSearching
          ? _value.peopleSearching
          : peopleSearching // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MerucariItemImpl implements _MerucariItem {
  const _$MerucariItemImpl(
      {@JsonKey(name: 'imageUrl') this.imageUrl = '',
      @JsonKey(name: 'itemTitle') this.itemTitle = '',
      @JsonKey(name: 'price') this.price = 0,
      @JsonKey(name: 'peopleSearching') this.peopleSearching = ''});

  factory _$MerucariItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerucariItemImplFromJson(json);

  @override
  @JsonKey(name: 'imageUrl')
  final String imageUrl;
  @override
  @JsonKey(name: 'itemTitle')
  final String itemTitle;
  @override
  @JsonKey(name: 'price')
  final int price;
  @override
  @JsonKey(name: 'peopleSearching')
  final String peopleSearching;

  @override
  String toString() {
    return 'MerucariItem(imageUrl: $imageUrl, itemTitle: $itemTitle, price: $price, peopleSearching: $peopleSearching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerucariItemImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.itemTitle, itemTitle) ||
                other.itemTitle == itemTitle) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.peopleSearching, peopleSearching) ||
                other.peopleSearching == peopleSearching));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imageUrl, itemTitle, price, peopleSearching);

  /// Create a copy of MerucariItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MerucariItemImplCopyWith<_$MerucariItemImpl> get copyWith =>
      __$$MerucariItemImplCopyWithImpl<_$MerucariItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerucariItemImplToJson(
      this,
    );
  }
}

abstract class _MerucariItem implements MerucariItem {
  const factory _MerucariItem(
          {@JsonKey(name: 'imageUrl') final String imageUrl,
          @JsonKey(name: 'itemTitle') final String itemTitle,
          @JsonKey(name: 'price') final int price,
          @JsonKey(name: 'peopleSearching') final String peopleSearching}) =
      _$MerucariItemImpl;

  factory _MerucariItem.fromJson(Map<String, dynamic> json) =
      _$MerucariItemImpl.fromJson;

  @override
  @JsonKey(name: 'imageUrl')
  String get imageUrl;
  @override
  @JsonKey(name: 'itemTitle')
  String get itemTitle;
  @override
  @JsonKey(name: 'price')
  int get price;
  @override
  @JsonKey(name: 'peopleSearching')
  String get peopleSearching;

  /// Create a copy of MerucariItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MerucariItemImplCopyWith<_$MerucariItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
