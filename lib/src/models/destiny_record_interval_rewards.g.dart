// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_interval_rewards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordIntervalRewards _$DestinyRecordIntervalRewardsFromJson(
    Map<String, dynamic> json) {
  return DestinyRecordIntervalRewards()
    ..intervalRewardItems = (json['intervalRewardItems'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyRecordIntervalRewardsToJson(
        DestinyRecordIntervalRewards instance) =>
    <String, dynamic>{
      'intervalRewardItems': instance.intervalRewardItems,
    };
