// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_offer_claim_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerOfferClaimRequest _$PartnerOfferClaimRequestFromJson(
    Map<String, dynamic> json) {
  return PartnerOfferClaimRequest()
    ..partnerOfferId = json['PartnerOfferId'] as String
    ..bungieNetMembershipId = json['BungieNetMembershipId'] as String
    ..transactionId = json['TransactionId'] as String;
}

Map<String, dynamic> _$PartnerOfferClaimRequestToJson(
        PartnerOfferClaimRequest instance) =>
    <String, dynamic>{
      'PartnerOfferId': instance.partnerOfferId,
      'BungieNetMembershipId': instance.bungieNetMembershipId,
      'TransactionId': instance.transactionId,
    };
