// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_checklist_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyChecklistDefinition _$DestinyChecklistDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyChecklistDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..viewActionString = json['viewActionString'] as String?
      ..scope = decodeDestinyScope(json['scope'])
      ..entries = (json['entries'] as List<dynamic>?)
          ?.map((e) => DestinyChecklistEntryDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyChecklistDefinitionToJson(
        DestinyChecklistDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'viewActionString': instance.viewActionString,
      'scope': encodeDestinyScope(instance.scope),
      'entries': instance.entries,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
