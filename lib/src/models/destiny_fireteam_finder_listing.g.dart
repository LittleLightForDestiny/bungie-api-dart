// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderListing _$DestinyFireteamFinderListingFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderListing()
      ..listingId = json['listingId'] as String?
      ..revision = (json['revision'] as num?)?.toInt()
      ..ownerId =
          json['ownerId'] == null
              ? null
              : DestinyFireteamFinderPlayerId.fromJson(
                json['ownerId'] as Map<String, dynamic>,
              )
      ..settings =
          json['settings'] == null
              ? null
              : DestinyFireteamFinderLobbySettings.fromJson(
                json['settings'] as Map<String, dynamic>,
              )
      ..availableSlots = (json['availableSlots'] as num?)?.toInt()
      ..lobbyId = json['lobbyId'] as String?
      ..lobbyState = decodeDestinyFireteamFinderLobbyState(json['lobbyState'])
      ..createdDateTime = json['createdDateTime'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderListingToJson(
  DestinyFireteamFinderListing instance,
) => <String, dynamic>{
  'listingId': instance.listingId,
  'revision': instance.revision,
  'ownerId': instance.ownerId?.toJson(),
  'settings': instance.settings?.toJson(),
  'availableSlots': instance.availableSlots,
  'lobbyId': instance.lobbyId,
  'lobbyState': encodeDestinyFireteamFinderLobbyState(instance.lobbyState),
  'createdDateTime': instance.createdDateTime,
};
