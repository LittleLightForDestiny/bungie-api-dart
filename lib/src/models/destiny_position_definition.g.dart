// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_position_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPositionDefinition _$DestinyPositionDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyPositionDefinition()
      ..x = (json['x'] as num?)?.toInt()
      ..y = (json['y'] as num?)?.toInt()
      ..z = (json['z'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPositionDefinitionToJson(
        DestinyPositionDefinition instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'z': instance.z,
    };
