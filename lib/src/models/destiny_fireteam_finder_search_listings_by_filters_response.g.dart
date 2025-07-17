// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_search_listings_by_filters_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderSearchListingsByFiltersResponse
_$DestinyFireteamFinderSearchListingsByFiltersResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderSearchListingsByFiltersResponse()
      ..listings =
          (json['listings'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderListing.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..pageToken = json['pageToken'] as String?;

Map<String, dynamic>
_$DestinyFireteamFinderSearchListingsByFiltersResponseToJson(
  DestinyFireteamFinderSearchListingsByFiltersResponse instance,
) => <String, dynamic>{
  'listings': instance.listings?.map((e) => e.toJson()).toList(),
  'pageToken': instance.pageToken,
};
