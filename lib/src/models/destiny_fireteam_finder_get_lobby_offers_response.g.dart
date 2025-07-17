// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_get_lobby_offers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderGetLobbyOffersResponse
_$DestinyFireteamFinderGetLobbyOffersResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderGetLobbyOffersResponse()
      ..offers =
          (json['offers'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderOffer.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..pageToken = json['pageToken'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderGetLobbyOffersResponseToJson(
  DestinyFireteamFinderGetLobbyOffersResponse instance,
) => <String, dynamic>{
  'offers': instance.offers?.map((e) => e.toJson()).toList(),
  'pageToken': instance.pageToken,
};
