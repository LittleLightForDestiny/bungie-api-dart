// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_reward_item_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionRewardItemQuantity
    _$DestinyProgressionRewardItemQuantityFromJson(Map<String, dynamic> json) =>
        DestinyProgressionRewardItemQuantity()
          ..rewardedAtProgressionLevel =
              json['rewardedAtProgressionLevel'] as int?
          ..acquisitionBehavior =
              decodeDestinyProgressionRewardItemAcquisitionBehavior(
                  json['acquisitionBehavior'])
          ..uiDisplayStyle = json['uiDisplayStyle'] as String?
          ..claimUnlockDisplayStrings =
              (json['claimUnlockDisplayStrings'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList()
          ..itemHash = json['itemHash'] as int?
          ..itemInstanceId = json['itemInstanceId'] as String?
          ..quantity = json['quantity'] as int?
          ..hasConditionalVisibility =
              json['hasConditionalVisibility'] as bool?;

Map<String, dynamic> _$DestinyProgressionRewardItemQuantityToJson(
        DestinyProgressionRewardItemQuantity instance) =>
    <String, dynamic>{
      'rewardedAtProgressionLevel': instance.rewardedAtProgressionLevel,
      'acquisitionBehavior':
          encodeDestinyProgressionRewardItemAcquisitionBehavior(
              instance.acquisitionBehavior),
      'uiDisplayStyle': instance.uiDisplayStyle,
      'claimUnlockDisplayStrings': instance.claimUnlockDisplayStrings,
      'itemHash': instance.itemHash,
      'itemInstanceId': instance.itemInstanceId,
      'quantity': instance.quantity,
      'hasConditionalVisibility': instance.hasConditionalVisibility,
    };
