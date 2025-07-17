// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_option_group_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderOptionGroupDefinition
_$DestinyFireteamFinderOptionGroupDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderOptionGroupDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..descendingSortPriority =
          (json['descendingSortPriority'] as num?)?.toInt()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyFireteamFinderOptionGroupDefinitionToJson(
  DestinyFireteamFinderOptionGroupDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'descendingSortPriority': instance.descendingSortPriority,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
