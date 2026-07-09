// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyColor _$DestinyColorFromJson(Map<String, dynamic> json) => DestinyColor()
  ..red = (json['red'] as num?)?.toInt()
  ..green = (json['green'] as num?)?.toInt()
  ..blue = (json['blue'] as num?)?.toInt()
  ..alpha = (json['alpha'] as num?)?.toInt();

Map<String, dynamic> _$DestinyColorToJson(DestinyColor instance) =>
    <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue,
      'alpha': instance.alpha,
    };
