// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_destination_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDestinationDefinition _$DestinyDestinationDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyDestinationDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..placeHash = json['placeHash'] as int?
    ..defaultFreeroamActivityHash = json['defaultFreeroamActivityHash'] as int?
    ..activityGraphEntries = (json['activityGraphEntries'] as List<dynamic>?)
        ?.map((e) => DestinyActivityGraphListEntryDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..bubbleSettings = (json['bubbleSettings'] as List<dynamic>?)
        ?.map((e) => DestinyDestinationBubbleSettingDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..bubbles = (json['bubbles'] as List<dynamic>?)
        ?.map(
            (e) => DestinyBubbleDefinition.fromJson(e as Map<String, dynamic>))
        .toList()
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyDestinationDefinitionToJson(
        DestinyDestinationDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'placeHash': instance.placeHash,
      'defaultFreeroamActivityHash': instance.defaultFreeroamActivityHash,
      'activityGraphEntries': instance.activityGraphEntries,
      'bubbleSettings': instance.bubbleSettings,
      'bubbles': instance.bubbles,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
