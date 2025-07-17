// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_update_lobby_settings_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderUpdateLobbySettingsRequest
_$DestinyFireteamFinderUpdateLobbySettingsRequestFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderUpdateLobbySettingsRequest()
      ..updatedSettings =
          json['updatedSettings'] == null
              ? null
              : DestinyFireteamFinderLobbySettings.fromJson(
                json['updatedSettings'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyFireteamFinderUpdateLobbySettingsRequestToJson(
  DestinyFireteamFinderUpdateLobbySettingsRequest instance,
) => <String, dynamic>{'updatedSettings': instance.updatedSettings?.toJson()};
