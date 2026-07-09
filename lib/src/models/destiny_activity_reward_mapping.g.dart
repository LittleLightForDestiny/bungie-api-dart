// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_reward_mapping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityRewardMapping _$DestinyActivityRewardMappingFromJson(
  Map<String, dynamic> json,
) => DestinyActivityRewardMapping()
  ..displayBehavior = decodeDestinyActivityRewardDisplayMode(
    json['displayBehavior'],
  )
  ..rewardItems = (json['rewardItems'] as List<dynamic>?)
      ?.map(
        (e) => DestinyActivityRewardItem.fromJson(e as Map<String, dynamic>),
      )
      .toList();

Map<String, dynamic> _$DestinyActivityRewardMappingToJson(
  DestinyActivityRewardMapping instance,
) => <String, dynamic>{
  'displayBehavior': encodeDestinyActivityRewardDisplayMode(
    instance.displayBehavior,
  ),
  'rewardItems': instance.rewardItems?.map((e) => e.toJson()).toList(),
};
