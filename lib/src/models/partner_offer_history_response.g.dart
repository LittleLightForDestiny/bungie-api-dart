// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_offer_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerOfferHistoryResponse _$PartnerOfferHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return PartnerOfferHistoryResponse()
    ..partnerOfferKey = json['PartnerOfferKey'] as String
    ..membershipId = json['MembershipId'] as String
    ..membershipType = json['MembershipType'] as int
    ..localizedName = json['LocalizedName'] as String
    ..localizedDescription = json['LocalizedDescription'] as String
    ..isConsumable = json['IsConsumable'] as bool
    ..quantityApplied = json['QuantityApplied'] as int
    ..applyDate = json['ApplyDate'] as String;
}

Map<String, dynamic> _$PartnerOfferHistoryResponseToJson(
        PartnerOfferHistoryResponse instance) =>
    <String, dynamic>{
      'PartnerOfferKey': instance.partnerOfferKey,
      'MembershipId': instance.membershipId,
      'MembershipType': instance.membershipType,
      'LocalizedName': instance.localizedName,
      'LocalizedDescription': instance.localizedDescription,
      'IsConsumable': instance.isConsumable,
      'QuantityApplied': instance.quantityApplied,
      'ApplyDate': instance.applyDate,
    };
