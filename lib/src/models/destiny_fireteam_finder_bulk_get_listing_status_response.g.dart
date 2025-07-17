// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_bulk_get_listing_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderBulkGetListingStatusResponse
_$DestinyFireteamFinderBulkGetListingStatusResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderBulkGetListingStatusResponse()
      ..listingStatus =
          (json['listingStatus'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderListingStatus.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyFireteamFinderBulkGetListingStatusResponseToJson(
  DestinyFireteamFinderBulkGetListingStatusResponse instance,
) => <String, dynamic>{
  'listingStatus': instance.listingStatus?.map((e) => e.toJson()).toList(),
};
