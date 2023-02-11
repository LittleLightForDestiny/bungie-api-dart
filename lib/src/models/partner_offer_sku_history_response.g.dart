// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_offer_sku_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartnerOfferSkuHistoryResponse _$PartnerOfferSkuHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    PartnerOfferSkuHistoryResponse()
      ..skuIdentifier = json['SkuIdentifier'] as String?
      ..localizedName = json['LocalizedName'] as String?
      ..localizedDescription = json['LocalizedDescription'] as String?
      ..claimDate = json['ClaimDate'] as String?
      ..allOffersApplied = json['AllOffersApplied'] as bool?
      ..transactionId = json['TransactionId'] as String?
      ..skuOffers = (json['SkuOffers'] as List<dynamic>?)
          ?.map((e) =>
              PartnerOfferHistoryResponse.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PartnerOfferSkuHistoryResponseToJson(
        PartnerOfferSkuHistoryResponse instance) =>
    <String, dynamic>{
      'SkuIdentifier': instance.skuIdentifier,
      'LocalizedName': instance.localizedName,
      'LocalizedDescription': instance.localizedDescription,
      'ClaimDate': instance.claimDate,
      'AllOffersApplied': instance.allOffersApplied,
      'TransactionId': instance.transactionId,
      'SkuOffers': instance.skuOffers?.map((e) => e.toJson()).toList(),
    };
