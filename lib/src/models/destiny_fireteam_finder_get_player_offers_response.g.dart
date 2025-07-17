// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_get_player_offers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderGetPlayerOffersResponse
_$DestinyFireteamFinderGetPlayerOffersResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderGetPlayerOffersResponse()
      ..offers =
          (json['offers'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderOffer.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyFireteamFinderGetPlayerOffersResponseToJson(
  DestinyFireteamFinderGetPlayerOffersResponse instance,
) => <String, dynamic>{
  'offers': instance.offers?.map((e) => e.toJson()).toList(),
};
