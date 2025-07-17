// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_respond_to_application_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderRespondToApplicationResponse
_$DestinyFireteamFinderRespondToApplicationResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderRespondToApplicationResponse()
      ..applicationId = json['applicationId'] as String?
      ..applicationRevision = (json['applicationRevision'] as num?)?.toInt();

Map<String, dynamic> _$DestinyFireteamFinderRespondToApplicationResponseToJson(
  DestinyFireteamFinderRespondToApplicationResponse instance,
) => <String, dynamic>{
  'applicationId': instance.applicationId,
  'applicationRevision': instance.applicationRevision,
};
