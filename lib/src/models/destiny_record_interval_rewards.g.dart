// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_interval_rewards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordIntervalRewards _$DestinyRecordIntervalRewardsFromJson(
  Map<String, dynamic> json,
) =>
    DestinyRecordIntervalRewards()
      ..intervalRewardItems =
          (json['intervalRewardItems'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemQuantity.fromJson(e as Map<String, dynamic>),
              )
              .toList();

Map<String, dynamic> _$DestinyRecordIntervalRewardsToJson(
  DestinyRecordIntervalRewards instance,
) => <String, dynamic>{
  'intervalRewardItems':
      instance.intervalRewardItems?.map((e) => e.toJson()).toList(),
};
