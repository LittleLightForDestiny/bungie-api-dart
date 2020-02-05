// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyColor _$DestinyColorFromJson(Map<String, dynamic> json) {
  return DestinyColor()
    ..red = json['red'] as int
    ..green = json['green'] as int
    ..blue = json['blue'] as int
    ..alpha = json['alpha'] as int;
}

Map<String, dynamic> _$DestinyColorToJson(DestinyColor instance) =>
    <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue,
      'alpha': instance.alpha,
    };
