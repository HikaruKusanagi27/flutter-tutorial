// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'residence_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResidenceItemImpl _$$ResidenceItemImplFromJson(Map<String, dynamic> json) =>
    _$ResidenceItemImpl(
      imagePath: json['imagePath'] as String? ?? '',
      madoriPathrl: json['madoriPath'] as String? ?? '',
      title: json['title'] ?? '',
      subTitle: json['subTitle'] ?? '',
      stationName: json['stationName'] ?? '',
      amount: json['amount'] ?? '',
      floor: json['floor'] ?? '',
    );

Map<String, dynamic> _$$ResidenceItemImplToJson(_$ResidenceItemImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'madoriPath': instance.madoriPathrl,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'stationName': instance.stationName,
      'amount': instance.amount,
      'floor': instance.floor,
    };
