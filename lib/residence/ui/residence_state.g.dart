// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'residence_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResidenceItemImpl _$$ResidenceItemImplFromJson(Map<String, dynamic> json) =>
    _$ResidenceItemImpl(
      imageUrl: json['imageUrl'] as String? ?? '',
      floorPlanUrl: json['floorPlanUrl'] as String? ?? '',
      propertyTitle: json['propertyTitle'] ?? '',
      price: json['price'] ?? '',
      access: json['access'] ?? '',
      roomDetails: json['roomDetails'] ?? '',
      buildingInfo: json['buildingInfo'] ?? '',
    );

Map<String, dynamic> _$$ResidenceItemImplToJson(_$ResidenceItemImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'floorPlanUrl': instance.floorPlanUrl,
      'propertyTitle': instance.propertyTitle,
      'price': instance.price,
      'access': instance.access,
      'roomDetails': instance.roomDetails,
      'buildingInfo': instance.buildingInfo,
    };
