// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_search_listings_by_clan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderSearchListingsByClanResponse
_$DestinyFireteamFinderSearchListingsByClanResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderSearchListingsByClanResponse()
      ..listings =
          (json['listings'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderListing.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..pageToken = json['pageToken'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderSearchListingsByClanResponseToJson(
  DestinyFireteamFinderSearchListingsByClanResponse instance,
) => <String, dynamic>{
  'listings': instance.listings?.map((e) => e.toJson()).toList(),
  'pageToken': instance.pageToken,
};
