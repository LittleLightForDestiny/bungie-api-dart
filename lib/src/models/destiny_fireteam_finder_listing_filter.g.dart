// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_listing_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderListingFilter _$DestinyFireteamFinderListingFilterFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderListingFilter()
      ..listingValue =
          json['listingValue'] == null
              ? null
              : DestinyFireteamFinderListingValue.fromJson(
                json['listingValue'] as Map<String, dynamic>,
              )
      ..rangeType = decodeDestinyFireteamFinderListingFilterRangeType(
        json['rangeType'],
      )
      ..matchType = decodeDestinyFireteamFinderListingFilterMatchType(
        json['matchType'],
      );

Map<String, dynamic> _$DestinyFireteamFinderListingFilterToJson(
  DestinyFireteamFinderListingFilter instance,
) => <String, dynamic>{
  'listingValue': instance.listingValue?.toJson(),
  'rangeType': encodeDestinyFireteamFinderListingFilterRangeType(
    instance.rangeType,
  ),
  'matchType': encodeDestinyFireteamFinderListingFilterMatchType(
    instance.matchType,
  ),
};
