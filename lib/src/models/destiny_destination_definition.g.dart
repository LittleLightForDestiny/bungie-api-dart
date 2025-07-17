// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_destination_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDestinationDefinition _$DestinyDestinationDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyDestinationDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..placeHash = (json['placeHash'] as num?)?.toInt()
      ..defaultFreeroamActivityHash =
          (json['defaultFreeroamActivityHash'] as num?)?.toInt()
      ..activityGraphEntries = (json['activityGraphEntries'] as List<dynamic>?)
          ?.map((e) => DestinyActivityGraphListEntryDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..bubbleSettings = (json['bubbleSettings'] as List<dynamic>?)
          ?.map((e) => DestinyDestinationBubbleSettingDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..bubbles = (json['bubbles'] as List<dynamic>?)
          ?.map((e) =>
              DestinyBubbleDefinition.fromJson(e as Map<String, dynamic>))
          .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyDestinationDefinitionToJson(
        DestinyDestinationDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'placeHash': instance.placeHash,
      'defaultFreeroamActivityHash': instance.defaultFreeroamActivityHash,
      'activityGraphEntries':
          instance.activityGraphEntries?.map((e) => e.toJson()).toList(),
      'bubbleSettings':
          instance.bubbleSettings?.map((e) => e.toJson()).toList(),
      'bubbles': instance.bubbles?.map((e) => e.toJson()).toList(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
