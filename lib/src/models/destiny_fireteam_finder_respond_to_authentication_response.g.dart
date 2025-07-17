// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_respond_to_authentication_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderRespondToAuthenticationResponse
_$DestinyFireteamFinderRespondToAuthenticationResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderRespondToAuthenticationResponse()
      ..applicationId = json['applicationId'] as String?
      ..applicationRevision = (json['applicationRevision'] as num?)?.toInt()
      ..offer =
          json['offer'] == null
              ? null
              : DestinyFireteamFinderOffer.fromJson(
                json['offer'] as Map<String, dynamic>,
              )
      ..listing =
          json['listing'] == null
              ? null
              : DestinyFireteamFinderListing.fromJson(
                json['listing'] as Map<String, dynamic>,
              );

Map<String, dynamic>
_$DestinyFireteamFinderRespondToAuthenticationResponseToJson(
  DestinyFireteamFinderRespondToAuthenticationResponse instance,
) => <String, dynamic>{
  'applicationId': instance.applicationId,
  'applicationRevision': instance.applicationRevision,
  'offer': instance.offer?.toJson(),
  'listing': instance.listing?.toJson(),
};
