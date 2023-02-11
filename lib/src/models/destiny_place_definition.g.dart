// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_place_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPlaceDefinition _$DestinyPlaceDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyPlaceDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyPlaceDefinitionToJson(
        DestinyPlaceDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
