// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderOffer _$DestinyFireteamFinderOfferFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderOffer()
      ..offerId = json['offerId'] as String?
      ..lobbyId = json['lobbyId'] as String?
      ..revision = (json['revision'] as num?)?.toInt()
      ..state = decodeDestinyFireteamFinderOfferState(json['state'])
      ..targetId =
          json['targetId'] == null
              ? null
              : DestinyFireteamFinderPlayerId.fromJson(
                json['targetId'] as Map<String, dynamic>,
              )
      ..applicationId = json['applicationId'] as String?
      ..createdDateTime = json['createdDateTime'] as String?;

Map<String, dynamic> _$DestinyFireteamFinderOfferToJson(
  DestinyFireteamFinderOffer instance,
) => <String, dynamic>{
  'offerId': instance.offerId,
  'lobbyId': instance.lobbyId,
  'revision': instance.revision,
  'state': encodeDestinyFireteamFinderOfferState(instance.state),
  'targetId': instance.targetId?.toJson(),
  'applicationId': instance.applicationId,
  'createdDateTime': instance.createdDateTime,
};
