// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bungie_reward_display.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BungieRewardDisplay _$BungieRewardDisplayFromJson(Map<String, dynamic> json) =>
    BungieRewardDisplay()
      ..userRewardAvailabilityModel =
          json['UserRewardAvailabilityModel'] == null
              ? null
              : UserRewardAvailabilityModel.fromJson(
                  json['UserRewardAvailabilityModel'] as Map<String, dynamic>)
      ..objectiveDisplayProperties = json['ObjectiveDisplayProperties'] == null
          ? null
          : RewardDisplayProperties.fromJson(
              json['ObjectiveDisplayProperties'] as Map<String, dynamic>)
      ..rewardDisplayProperties = json['RewardDisplayProperties'] == null
          ? null
          : RewardDisplayProperties.fromJson(
              json['RewardDisplayProperties'] as Map<String, dynamic>);

Map<String, dynamic> _$BungieRewardDisplayToJson(
        BungieRewardDisplay instance) =>
    <String, dynamic>{
      'UserRewardAvailabilityModel': instance.userRewardAvailabilityModel,
      'ObjectiveDisplayProperties': instance.objectiveDisplayProperties,
      'RewardDisplayProperties': instance.rewardDisplayProperties,
    };
