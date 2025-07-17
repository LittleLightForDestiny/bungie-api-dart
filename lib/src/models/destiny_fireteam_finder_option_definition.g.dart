// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_option_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderOptionDefinition
_$DestinyFireteamFinderOptionDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyFireteamFinderOptionDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..descendingSortPriority =
          (json['descendingSortPriority'] as num?)?.toInt()
      ..groupHash = (json['groupHash'] as num?)?.toInt()
      ..codeOptionType = decodeFireteamFinderCodeOptionType(
        json['codeOptionType'],
      )
      ..availability =
          json['availability'] == null
              ? null
              : FireteamFinderOptionAvailability.fromJson(
                (json['availability'] as num).toInt(),
              )
      ..visibility = decodeFireteamFinderOptionVisibility(json['visibility'])
      ..uiDisplayStyle = json['uiDisplayStyle'] as String?
      ..creatorSettings =
          json['creatorSettings'] == null
              ? null
              : DestinyFireteamFinderOptionCreatorSettings.fromJson(
                json['creatorSettings'] as Map<String, dynamic>,
              )
      ..searcherSettings =
          json['searcherSettings'] == null
              ? null
              : DestinyFireteamFinderOptionSearcherSettings.fromJson(
                json['searcherSettings'] as Map<String, dynamic>,
              )
      ..values =
          json['values'] == null
              ? null
              : DestinyFireteamFinderOptionValues.fromJson(
                json['values'] as Map<String, dynamic>,
              )
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyFireteamFinderOptionDefinitionToJson(
  DestinyFireteamFinderOptionDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'descendingSortPriority': instance.descendingSortPriority,
  'groupHash': instance.groupHash,
  'codeOptionType': encodeFireteamFinderCodeOptionType(instance.codeOptionType),
  'availability': instance.availability?.toJson(),
  'visibility': encodeFireteamFinderOptionVisibility(instance.visibility),
  'uiDisplayStyle': instance.uiDisplayStyle,
  'creatorSettings': instance.creatorSettings?.toJson(),
  'searcherSettings': instance.searcherSettings?.toJson(),
  'values': instance.values?.toJson(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
