// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_player_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderPlayerId _$DestinyFireteamFinderPlayerIdFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderPlayerId()
      ..membershipId = json['membershipId'] as String?
      ..membershipType = decodeBungieMembershipType(json['membershipType'])
      ..characterId = json['characterId'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderPlayerIdToJson(
  DestinyFireteamFinderPlayerId instance,
) => <String, dynamic>{
  'membershipId': instance.membershipId,
  'membershipType': encodeBungieMembershipType(instance.membershipType),
  'characterId': instance.characterId,
};
