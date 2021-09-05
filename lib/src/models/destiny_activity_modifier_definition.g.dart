// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_modifier_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityModifierDefinition _$DestinyActivityModifierDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyActivityModifierDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyActivityModifierDefinitionToJson(
        DestinyActivityModifierDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
