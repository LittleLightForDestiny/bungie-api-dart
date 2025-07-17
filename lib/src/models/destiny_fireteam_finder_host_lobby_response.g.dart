// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_host_lobby_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderHostLobbyResponse
_$DestinyFireteamFinderHostLobbyResponseFromJson(Map<String, dynamic> json) =>
    DestinyFireteamFinderHostLobbyResponse()
      ..lobbyId = json['lobbyId'] as String?
      ..listingId = json['listingId'] as String?
      ..applicationId = json['applicationId'] as String?
      ..offerId = json['offerId'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderHostLobbyResponseToJson(
  DestinyFireteamFinderHostLobbyResponse instance,
) => <String, dynamic>{
  'lobbyId': instance.lobbyId,
  'listingId': instance.listingId,
  'applicationId': instance.applicationId,
  'offerId': instance.offerId,
};
