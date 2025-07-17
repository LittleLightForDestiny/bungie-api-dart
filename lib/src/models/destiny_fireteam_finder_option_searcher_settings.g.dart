// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_option_searcher_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderOptionSearcherSettings
_$DestinyFireteamFinderOptionSearcherSettingsFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderOptionSearcherSettings()
      ..control =
          json['control'] == null
              ? null
              : DestinyFireteamFinderOptionSettingsControl.fromJson(
                json['control'] as Map<String, dynamic>,
              )
      ..searchFilterType = decodeFireteamFinderOptionSearchFilterType(
        json['searchFilterType'],
      );

Map<String, dynamic> _$DestinyFireteamFinderOptionSearcherSettingsToJson(
  DestinyFireteamFinderOptionSearcherSettings instance,
) => <String, dynamic>{
  'control': instance.control?.toJson(),
  'searchFilterType': encodeFireteamFinderOptionSearchFilterType(
    instance.searchFilterType,
  ),
};
