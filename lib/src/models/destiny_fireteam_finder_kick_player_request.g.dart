// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_kick_player_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderKickPlayerRequest
_$DestinyFireteamFinderKickPlayerRequestFromJson(Map<String, dynamic> json) =>
    DestinyFireteamFinderKickPlayerRequest()
      ..targetMembershipType = decodeBungieMembershipType(
        json['targetMembershipType'],
      )
      ..targetCharacterId = json['targetCharacterId'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderKickPlayerRequestToJson(
  DestinyFireteamFinderKickPlayerRequest instance,
) => <String, dynamic>{
  'targetMembershipType': encodeBungieMembershipType(
    instance.targetMembershipType,
  ),
  'targetCharacterId': instance.targetCharacterId,
};
