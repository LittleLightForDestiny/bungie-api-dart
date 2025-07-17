// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_listing_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderListingValue _$DestinyFireteamFinderListingValueFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderListingValue()
      ..valueType = (json['valueType'] as num?)?.toInt()
      ..values =
          (json['values'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$DestinyFireteamFinderListingValueToJson(
  DestinyFireteamFinderListingValue instance,
) => <String, dynamic>{
  'valueType': instance.valueType,
  'values': instance.values,
};
