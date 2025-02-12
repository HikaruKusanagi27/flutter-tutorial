// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merucari_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerucariItemImpl _$$MerucariItemImplFromJson(Map<String, dynamic> json) =>
    _$MerucariItemImpl(
      imageUrl: json['imageUrl'] as String? ?? '',
      itemTitle: json['itemTitle'] as String? ?? '',
      price: (json['price'] as num?)?.toInt() ?? 0,
      peopleSearching: json['peopleSearching'] as String? ?? '',
    );

Map<String, dynamic> _$$MerucariItemImplToJson(_$MerucariItemImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'itemTitle': instance.itemTitle,
      'price': instance.price,
      'peopleSearching': instance.peopleSearching,
    };
