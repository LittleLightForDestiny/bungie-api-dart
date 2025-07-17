// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_search_listings_by_clan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderSearchListingsByClanRequest
_$DestinyFireteamFinderSearchListingsByClanRequestFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderSearchListingsByClanRequest()
      ..pageSize = (json['pageSize'] as num?)?.toInt()
      ..pageToken = json['pageToken'] as String?
      ..lobbyState = decodeDestinyFireteamFinderLobbyState(json['lobbyState']);

Map<String, dynamic> _$DestinyFireteamFinderSearchListingsByClanRequestToJson(
  DestinyFireteamFinderSearchListingsByClanRequest instance,
) => <String, dynamic>{
  'pageSize': instance.pageSize,
  'pageToken': instance.pageToken,
  'lobbyState': encodeDestinyFireteamFinderLobbyState(instance.lobbyState),
};
