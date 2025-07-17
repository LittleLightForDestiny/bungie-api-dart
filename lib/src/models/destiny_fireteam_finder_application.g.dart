// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderApplication _$DestinyFireteamFinderApplicationFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderApplication()
      ..applicationId = json['applicationId'] as String?
      ..revision = (json['revision'] as num?)?.toInt()
      ..state = decodeDestinyFireteamFinderApplicationState(json['state'])
      ..submitterId =
          json['submitterId'] == null
              ? null
              : DestinyFireteamFinderPlayerId.fromJson(
                json['submitterId'] as Map<String, dynamic>,
              )
      ..referralToken = json['referralToken'] as String?
      ..applicantSet =
          json['applicantSet'] == null
              ? null
              : DestinyFireteamFinderApplicantSet.fromJson(
                json['applicantSet'] as Map<String, dynamic>,
              )
      ..applicationType = decodeDestinyFireteamFinderApplicationType(
        json['applicationType'],
      )
      ..listingId = json['listingId'] as String?
      ..createdDateTime = json['createdDateTime'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderApplicationToJson(
  DestinyFireteamFinderApplication instance,
) => <String, dynamic>{
  'applicationId': instance.applicationId,
  'revision': instance.revision,
  'state': encodeDestinyFireteamFinderApplicationState(instance.state),
  'submitterId': instance.submitterId?.toJson(),
  'referralToken': instance.referralToken,
  'applicantSet': instance.applicantSet?.toJson(),
  'applicationType': encodeDestinyFireteamFinderApplicationType(
    instance.applicationType,
  ),
  'listingId': instance.listingId,
  'createdDateTime': instance.createdDateTime,
};
