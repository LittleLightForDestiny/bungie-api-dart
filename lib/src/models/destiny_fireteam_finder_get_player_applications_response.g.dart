// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_get_player_applications_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderGetPlayerApplicationsResponse
_$DestinyFireteamFinderGetPlayerApplicationsResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderGetPlayerApplicationsResponse()
      ..applications =
          (json['applications'] as List<dynamic>?)
              ?.map(
                (e) => DestinyFireteamFinderApplication.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..nextPageToken = json['nextPageToken'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderGetPlayerApplicationsResponseToJson(
  DestinyFireteamFinderGetPlayerApplicationsResponse instance,
) => <String, dynamic>{
  'applications': instance.applications?.map((e) => e.toJson()).toList(),
  'nextPageToken': instance.nextPageToken,
};
