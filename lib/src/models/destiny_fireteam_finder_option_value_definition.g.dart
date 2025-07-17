// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_option_value_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderOptionValueDefinition
_$DestinyFireteamFinderOptionValueDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderOptionValueDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..value = (json['value'] as num?)?.toInt()
      ..flags =
          json['flags'] == null
              ? null
              : FireteamFinderOptionValueFlags.fromJson(
                (json['flags'] as num).toInt(),
              );

Map<String, dynamic> _$DestinyFireteamFinderOptionValueDefinitionToJson(
  DestinyFireteamFinderOptionValueDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'value': instance.value,
  'flags': instance.flags?.toJson(),
};
