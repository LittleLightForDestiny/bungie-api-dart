// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_get_player_lobbies_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderGetPlayerLobbiesResponse
_$DestinyFireteamFinderGetPlayerLobbiesResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderGetPlayerLobbiesResponse()
      ..lobbies =
          (json['lobbies'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderLobbyResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..pageSize = (json['pageSize'] as num?)?.toInt()
      ..nextPageToken = json['nextPageToken'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderGetPlayerLobbiesResponseToJson(
  DestinyFireteamFinderGetPlayerLobbiesResponse instance,
) => <String, dynamic>{
  'lobbies': instance.lobbies?.map((e) => e.toJson()).toList(),
  'pageSize': instance.pageSize,
  'nextPageToken': instance.nextPageToken,
};
