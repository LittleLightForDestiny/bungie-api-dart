// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_lobby_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderLobbyResponse _$DestinyFireteamFinderLobbyResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderLobbyResponse()
      ..lobbyId = json['lobbyId'] as String?
      ..revision = (json['revision'] as num?)?.toInt()
      ..state = decodeDestinyFireteamFinderLobbyState(json['state'])
      ..owner =
          json['owner'] == null
              ? null
              : DestinyFireteamFinderPlayerId.fromJson(
                json['owner'] as Map<String, dynamic>,
              )
      ..settings =
          json['settings'] == null
              ? null
              : DestinyFireteamFinderLobbySettings.fromJson(
                json['settings'] as Map<String, dynamic>,
              )
      ..players =
          (json['players'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderLobbyPlayer.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..listingId = json['listingId'] as String?
      ..createdDateTime = json['createdDateTime'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderLobbyResponseToJson(
  DestinyFireteamFinderLobbyResponse instance,
) => <String, dynamic>{
  'lobbyId': instance.lobbyId,
  'revision': instance.revision,
  'state': encodeDestinyFireteamFinderLobbyState(instance.state),
  'owner': instance.owner?.toJson(),
  'settings': instance.settings?.toJson(),
  'players': instance.players?.map((e) => e.toJson()).toList(),
  'listingId': instance.listingId,
  'createdDateTime': instance.createdDateTime,
};
