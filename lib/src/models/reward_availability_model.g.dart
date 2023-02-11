// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_availability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardAvailabilityModel _$RewardAvailabilityModelFromJson(
        Map<String, dynamic> json) =>
    RewardAvailabilityModel()
      ..hasExistingCode = json['HasExistingCode'] as bool?
      ..recordDefinitions = (json['RecordDefinitions'] as List<dynamic>?)
          ?.map((e) =>
              DestinyRecordDefinition.fromJson(e as Map<String, dynamic>))
          .toList()
      ..collectibleDefinitions = (json['CollectibleDefinitions']
              as List<dynamic>?)
          ?.map(
              (e) => CollectibleDefinitions.fromJson(e as Map<String, dynamic>))
          .toList()
      ..isOffer = json['IsOffer'] as bool?
      ..hasOffer = json['HasOffer'] as bool?
      ..offerApplied = json['OfferApplied'] as bool?
      ..decryptedToken = json['DecryptedToken'] as String?
      ..isLoyaltyReward = json['IsLoyaltyReward'] as bool?
      ..shopifyEndDate = json['ShopifyEndDate'] as String?
      ..gameEarnByDate = json['GameEarnByDate'] as String?
      ..redemptionEndDate = json['RedemptionEndDate'] as String?;

Map<String, dynamic> _$RewardAvailabilityModelToJson(
        RewardAvailabilityModel instance) =>
    <String, dynamic>{
      'HasExistingCode': instance.hasExistingCode,
      'RecordDefinitions':
          instance.recordDefinitions?.map((e) => e.toJson()).toList(),
      'CollectibleDefinitions':
          instance.collectibleDefinitions?.map((e) => e.toJson()).toList(),
      'IsOffer': instance.isOffer,
      'HasOffer': instance.hasOffer,
      'OfferApplied': instance.offerApplied,
      'DecryptedToken': instance.decryptedToken,
      'IsLoyaltyReward': instance.isLoyaltyReward,
      'ShopifyEndDate': instance.shopifyEndDate,
      'GameEarnByDate': instance.gameEarnByDate,
      'RedemptionEndDate': instance.redemptionEndDate,
    };
