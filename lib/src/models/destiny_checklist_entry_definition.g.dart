// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_checklist_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyChecklistEntryDefinition _$DestinyChecklistEntryDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyChecklistEntryDefinition()
      ..hash = json['hash'] as int?
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..destinationHash = json['destinationHash'] as int?
      ..locationHash = json['locationHash'] as int?
      ..bubbleHash = json['bubbleHash'] as int?
      ..activityHash = json['activityHash'] as int?
      ..itemHash = json['itemHash'] as int?
      ..vendorHash = json['vendorHash'] as int?
      ..vendorInteractionIndex = json['vendorInteractionIndex'] as int?
      ..scope = decodeDestinyScope(json['scope']);

Map<String, dynamic> _$DestinyChecklistEntryDefinitionToJson(
        DestinyChecklistEntryDefinition instance) =>
    <String, dynamic>{
      'hash': instance.hash,
      'displayProperties': instance.displayProperties?.toJson(),
      'destinationHash': instance.destinationHash,
      'locationHash': instance.locationHash,
      'bubbleHash': instance.bubbleHash,
      'activityHash': instance.activityHash,
      'itemHash': instance.itemHash,
      'vendorHash': instance.vendorHash,
      'vendorInteractionIndex': instance.vendorInteractionIndex,
      'scope': encodeDestinyScope(instance.scope),
    };
