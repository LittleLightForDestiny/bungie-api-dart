// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_apply_to_listing_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderApplyToListingResponse
_$DestinyFireteamFinderApplyToListingResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderApplyToListingResponse()
      ..isApplied = json['isApplied'] as bool?
      ..application =
          json['application'] == null
              ? null
              : DestinyFireteamFinderApplication.fromJson(
                json['application'] as Map<String, dynamic>,
              )
      ..listing =
          json['listing'] == null
              ? null
              : DestinyFireteamFinderListing.fromJson(
                json['listing'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyFireteamFinderApplyToListingResponseToJson(
  DestinyFireteamFinderApplyToListingResponse instance,
) => <String, dynamic>{
  'isApplied': instance.isApplied,
  'application': instance.application?.toJson(),
  'listing': instance.listing?.toJson(),
};
