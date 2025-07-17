// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_option_settings_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderOptionSettingsControl
_$DestinyFireteamFinderOptionSettingsControlFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderOptionSettingsControl()
      ..type = decodeFireteamFinderOptionControlType(json['type'])
      ..minSelectedItems = (json['minSelectedItems'] as num?)?.toInt()
      ..maxSelectedItems = (json['maxSelectedItems'] as num?)?.toInt();

Map<String, dynamic> _$DestinyFireteamFinderOptionSettingsControlToJson(
  DestinyFireteamFinderOptionSettingsControl instance,
) => <String, dynamic>{
  'type': encodeFireteamFinderOptionControlType(instance.type),
  'minSelectedItems': instance.minSelectedItems,
  'maxSelectedItems': instance.maxSelectedItems,
};
