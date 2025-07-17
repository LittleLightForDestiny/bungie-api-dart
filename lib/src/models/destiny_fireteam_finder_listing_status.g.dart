// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_listing_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderListingStatus _$DestinyFireteamFinderListingStatusFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderListingStatus()
      ..listingId = json['listingId'] as String?
      ..listingRevision = (json['listingRevision'] as num?)?.toInt()
      ..availableSlots = (json['availableSlots'] as num?)?.toInt();

Map<String, dynamic> _$DestinyFireteamFinderListingStatusToJson(
  DestinyFireteamFinderListingStatus instance,
) => <String, dynamic>{
  'listingId': instance.listingId,
  'listingRevision': instance.listingRevision,
  'availableSlots': instance.availableSlots,
};
