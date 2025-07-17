// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_label_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderLabelDefinition
_$DestinyFireteamFinderLabelDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyFireteamFinderLabelDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..descendingSortPriority =
          (json['descendingSortPriority'] as num?)?.toInt()
      ..groupHash = (json['groupHash'] as num?)?.toInt()
      ..allowInFields = decodeFireteamFinderLabelFieldType(
        json['allowInFields'],
      )
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyFireteamFinderLabelDefinitionToJson(
  DestinyFireteamFinderLabelDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'descendingSortPriority': instance.descendingSortPriority,
  'groupHash': instance.groupHash,
  'allowInFields': encodeFireteamFinderLabelFieldType(instance.allowInFields),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
