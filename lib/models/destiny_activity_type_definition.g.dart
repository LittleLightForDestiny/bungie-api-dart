// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_type_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityTypeDefinition _$DestinyActivityTypeDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyActivityTypeDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyActivityTypeDefinitionToJson(
        DestinyActivityTypeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
