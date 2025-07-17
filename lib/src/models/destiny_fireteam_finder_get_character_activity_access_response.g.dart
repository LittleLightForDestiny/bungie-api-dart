// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_get_character_activity_access_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderGetCharacterActivityAccessResponse
_$DestinyFireteamFinderGetCharacterActivityAccessResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderGetCharacterActivityAccessResponse()
      ..fireteamFinderActivityGraphStates =
          (json['fireteamFinderActivityGraphStates'] as Map<String, dynamic>?)
              ?.map(
                (k, e) => MapEntry(
                  k,
                  DestinyFireteamFinderActivityGraphState.fromJson(
                    e as Map<String, dynamic>,
                  ),
                ),
              );

Map<String, dynamic>
_$DestinyFireteamFinderGetCharacterActivityAccessResponseToJson(
  DestinyFireteamFinderGetCharacterActivityAccessResponse instance,
) => <String, dynamic>{
  'fireteamFinderActivityGraphStates': instance
      .fireteamFinderActivityGraphStates
      ?.map((k, e) => MapEntry(k, e.toJson())),
};
