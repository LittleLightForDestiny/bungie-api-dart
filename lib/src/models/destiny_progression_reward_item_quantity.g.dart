// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_reward_item_quantity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionRewardItemQuantity
    _$DestinyProgressionRewardItemQuantityFromJson(Map<String, dynamic> json) =>
        DestinyProgressionRewardItemQuantity()
          ..rewardItemIndex = (json['rewardItemIndex'] as num?)?.toInt()
          ..rewardedAtProgressionLevel =
              (json['rewardedAtProgressionLevel'] as num?)?.toInt()
          ..acquisitionBehavior =
              decodeDestinyProgressionRewardItemAcquisitionBehavior(
                  json['acquisitionBehavior'])
          ..uiDisplayStyle = json['uiDisplayStyle'] as String?
          ..claimUnlockDisplayStrings =
              (json['claimUnlockDisplayStrings'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList()
          ..socketOverrides = (json['socketOverrides'] as List<dynamic>?)
              ?.map((e) => DestinyProgressionSocketPlugOverride.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..itemHash = (json['itemHash'] as num?)?.toInt()
          ..itemInstanceId = json['itemInstanceId'] as String?
          ..quantity = (json['quantity'] as num?)?.toInt()
          ..hasConditionalVisibility =
              json['hasConditionalVisibility'] as bool?;

Map<String, dynamic> _$DestinyProgressionRewardItemQuantityToJson(
        DestinyProgressionRewardItemQuantity instance) =>
    <String, dynamic>{
      'rewardItemIndex': instance.rewardItemIndex,
      'rewardedAtProgressionLevel': instance.rewardedAtProgressionLevel,
      'acquisitionBehavior':
          encodeDestinyProgressionRewardItemAcquisitionBehavior(
              instance.acquisitionBehavior),
      'uiDisplayStyle': instance.uiDisplayStyle,
      'claimUnlockDisplayStrings': instance.claimUnlockDisplayStrings,
      'socketOverrides':
          instance.socketOverrides?.map((e) => e.toJson()).toList(),
      'itemHash': instance.itemHash,
      'itemInstanceId': instance.itemInstanceId,
      'quantity': instance.quantity,
      'hasConditionalVisibility': instance.hasConditionalVisibility,
    };
