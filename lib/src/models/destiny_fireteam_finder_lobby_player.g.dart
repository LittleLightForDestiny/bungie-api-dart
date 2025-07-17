// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_lobby_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderLobbyPlayer _$DestinyFireteamFinderLobbyPlayerFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderLobbyPlayer()
      ..playerId =
          json['playerId'] == null
              ? null
              : DestinyFireteamFinderPlayerId.fromJson(
                json['playerId'] as Map<String, dynamic>,
              )
      ..referralToken = json['referralToken'] as String?
      ..state = decodeDestinyFireteamFinderPlayerReadinessState(json['state'])
      ..offerId = json['offerId'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderLobbyPlayerToJson(
  DestinyFireteamFinderLobbyPlayer instance,
) => <String, dynamic>{
  'playerId': instance.playerId?.toJson(),
  'referralToken': instance.referralToken,
  'state': encodeDestinyFireteamFinderPlayerReadinessState(instance.state),
  'offerId': instance.offerId,
};
