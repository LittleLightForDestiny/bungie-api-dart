// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_lobby_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderLobbySettings _$DestinyFireteamFinderLobbySettingsFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderLobbySettings()
      ..maxPlayerCount = (json['maxPlayerCount'] as num?)?.toInt()
      ..onlinePlayersOnly = json['onlinePlayersOnly'] as bool?
      ..privacyScope = decodeDestinyFireteamFinderLobbyPrivacyScope(
        json['privacyScope'],
      )
      ..scheduledDateTime = json['scheduledDateTime'] as String?
      ..clanId = json['clanId'] as String?
      ..listingValues =
          (json['listingValues'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderListingValue.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..activityGraphHash = (json['activityGraphHash'] as num?)?.toInt()
      ..activityHash = (json['activityHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyFireteamFinderLobbySettingsToJson(
  DestinyFireteamFinderLobbySettings instance,
) => <String, dynamic>{
  'maxPlayerCount': instance.maxPlayerCount,
  'onlinePlayersOnly': instance.onlinePlayersOnly,
  'privacyScope': encodeDestinyFireteamFinderLobbyPrivacyScope(
    instance.privacyScope,
  ),
  'scheduledDateTime': instance.scheduledDateTime,
  'clanId': instance.clanId,
  'listingValues': instance.listingValues?.map((e) => e.toJson()).toList(),
  'activityGraphHash': instance.activityGraphHash,
  'activityHash': instance.activityHash,
};
