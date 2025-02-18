// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YoutubeItemImpl _$$YoutubeItemImplFromJson(Map<String, dynamic> json) =>
    _$YoutubeItemImpl(
      imagePath: json['imagePath'] as String,
      iconPath: json['iconPath'] as String,
      title: json['title'] as String,
      channelName: json['channelName'] as String,
      numOfViews: (json['numOfViews'] as num).toInt(),
      daysAgo: (json['daysAgo'] as num).toInt(),
    );

Map<String, dynamic> _$$YoutubeItemImplToJson(_$YoutubeItemImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'iconPath': instance.iconPath,
      'title': instance.title,
      'channelName': instance.channelName,
      'numOfViews': instance.numOfViews,
      'daysAgo': instance.daysAgo,
    };
