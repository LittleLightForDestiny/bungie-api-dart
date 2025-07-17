// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_get_listing_applications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderGetListingApplicationsResponse
_$DestinyFireteamFinderGetListingApplicationsResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderGetListingApplicationsResponse()
      ..applications =
          (json['applications'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderApplication.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..pageSize = (json['pageSize'] as num?)?.toInt()
      ..nextPageToken = json['nextPageToken'] as String?;

Map<String, dynamic>
_$DestinyFireteamFinderGetListingApplicationsResponseToJson(
  DestinyFireteamFinderGetListingApplicationsResponse instance,
) => <String, dynamic>{
  'applications': instance.applications?.map((e) => e.toJson()).toList(),
  'pageSize': instance.pageSize,
  'nextPageToken': instance.nextPageToken,
};
