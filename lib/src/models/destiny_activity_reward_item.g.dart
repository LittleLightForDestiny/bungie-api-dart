// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_reward_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityRewardItem _$DestinyActivityRewardItemFromJson(
  Map<String, dynamic> json,
) => DestinyActivityRewardItem()
  ..itemQuantity = json['itemQuantity'] == null
      ? null
      : DestinyItemQuantity.fromJson(
          json['itemQuantity'] as Map<String, dynamic>,
        )
  ..uiStyle = json['uiStyle'] as String?;

Map<String, dynamic> _$DestinyActivityRewardItemToJson(
  DestinyActivityRewardItem instance,
) => <String, dynamic>{
  'itemQuantity': instance.itemQuantity?.toJson(),
  'uiStyle': instance.uiStyle,
};
