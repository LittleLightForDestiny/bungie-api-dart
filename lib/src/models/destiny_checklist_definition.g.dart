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
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyChecklistDefinitionToJson(
        DestinyChecklistDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'viewActionString': instance.viewActionString,
      'scope': encodeDestinyScope(instance.scope),
      'entries': instance.entries?.map((e) => e.toJson()).toList(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
