// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_option_creator_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderOptionCreatorSettings
_$DestinyFireteamFinderOptionCreatorSettingsFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderOptionCreatorSettings()
      ..control =
          json['control'] == null
              ? null
              : DestinyFireteamFinderOptionSettingsControl.fromJson(
                json['control'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyFireteamFinderOptionCreatorSettingsToJson(
  DestinyFireteamFinderOptionCreatorSettings instance,
) => <String, dynamic>{'control': instance.control?.toJson()};
