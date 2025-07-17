// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_search_listings_by_filters_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderSearchListingsByFiltersRequest
_$DestinyFireteamFinderSearchListingsByFiltersRequestFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderSearchListingsByFiltersRequest()
      ..filters =
          (json['filters'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderListingFilter.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..pageSize = (json['pageSize'] as num?)?.toInt()
      ..pageToken = json['pageToken'] as String?
      ..lobbyState = decodeDestinyFireteamFinderLobbyState(json['lobbyState']);

Map<String, dynamic>
_$DestinyFireteamFinderSearchListingsByFiltersRequestToJson(
  DestinyFireteamFinderSearchListingsByFiltersRequest instance,
) => <String, dynamic>{
  'filters': instance.filters?.map((e) => e.toJson()).toList(),
  'pageSize': instance.pageSize,
  'pageToken': instance.pageToken,
  'lobbyState': encodeDestinyFireteamFinderLobbyState(instance.lobbyState),
};
