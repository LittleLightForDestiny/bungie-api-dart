// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_fireteam_finder_respond_to_offer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFireteamFinderRespondToOfferResponse
_$DestinyFireteamFinderRespondToOfferResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyFireteamFinderRespondToOfferResponse()
      ..offerId = json['offerId'] as String?
      ..revision = (json['revision'] as num?)?.toInt()
      ..state = decodeDestinyFireteamFinderOfferState(json['state']);

Map<String, dynamic> _$DestinyFireteamFinderRespondToOfferResponseToJson(
  DestinyFireteamFinderRespondToOfferResponse instance,
) => <String, dynamic>{
  'offerId': instance.offerId,
  'revision': instance.revision,
  'state': encodeDestinyFireteamFinderOfferState(instance.state),
};
