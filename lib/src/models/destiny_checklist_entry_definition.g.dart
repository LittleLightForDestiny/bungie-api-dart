// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_checklist_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyChecklistEntryDefinition _$DestinyChecklistEntryDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyChecklistEntryDefinition()
      ..hash = (json['hash'] as num?)?.toInt()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..destinationHash = (json['destinationHash'] as num?)?.toInt()
      ..locationHash = (json['locationHash'] as num?)?.toInt()
      ..bubbleHash = (json['bubbleHash'] as num?)?.toInt()
      ..activityHash = (json['activityHash'] as num?)?.toInt()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..vendorHash = (json['vendorHash'] as num?)?.toInt()
      ..vendorInteractionIndex =
          (json['vendorInteractionIndex'] as num?)?.toInt()
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
