// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_unlock_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyUnlockDefinition _$DestinyUnlockDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyUnlockDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyUnlockDefinitionToJson(
        DestinyUnlockDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
