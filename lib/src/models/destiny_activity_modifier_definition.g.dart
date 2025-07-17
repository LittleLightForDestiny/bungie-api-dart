// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_modifier_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityModifierDefinition _$DestinyActivityModifierDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyActivityModifierDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..displayInNavMode = json['displayInNavMode'] as bool?
      ..displayInActivitySelection = json['displayInActivitySelection'] as bool?
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivityModifierDefinitionToJson(
        DestinyActivityModifierDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'displayInNavMode': instance.displayInNavMode,
      'displayInActivitySelection': instance.displayInActivitySelection,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
