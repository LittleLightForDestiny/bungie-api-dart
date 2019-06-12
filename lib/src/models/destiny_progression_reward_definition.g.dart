// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_reward_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionRewardDefinition _$DestinyProgressionRewardDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyProgressionRewardDefinition()
    ..progressionMappingHash = json['progressionMappingHash'] as int
    ..amount = json['amount'] as int
    ..applyThrottles = json['applyThrottles'] as bool;
}

Map<String, dynamic> _$DestinyProgressionRewardDefinitionToJson(
        DestinyProgressionRewardDefinition instance) =>
    <String, dynamic>{
      'progressionMappingHash': instance.progressionMappingHash,
      'amount': instance.amount,
      'applyThrottles': instance.applyThrottles
    };
