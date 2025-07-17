// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_update_lobby_settings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderUpdateLobbySettingsResponse
_$DestinyFireteamFinderUpdateLobbySettingsResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderUpdateLobbySettingsResponse()
      ..updatedLobby =
          json['updatedLobby'] == null
              ? null
              : DestinyFireteamFinderLobbyResponse.fromJson(
                json['updatedLobby'] as Map<String, dynamic>,
              )
      ..updatedListing =
          json['updatedListing'] == null
              ? null
              : DestinyFireteamFinderListing.fromJson(
                json['updatedListing'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyFireteamFinderUpdateLobbySettingsResponseToJson(
  DestinyFireteamFinderUpdateLobbySettingsResponse instance,
) => <String, dynamic>{
  'updatedLobby': instance.updatedLobby?.toJson(),
  'updatedListing': instance.updatedListing?.toJson(),
};
