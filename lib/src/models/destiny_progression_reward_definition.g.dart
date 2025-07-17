// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_reward_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionRewardDefinition _$DestinyProgressionRewardDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyProgressionRewardDefinition()
      ..progressionMappingHash =
          (json['progressionMappingHash'] as num?)?.toInt()
      ..amount = (json['amount'] as num?)?.toInt()
      ..applyThrottles = json['applyThrottles'] as bool?;

Map<String, dynamic> _$DestinyProgressionRewardDefinitionToJson(
  DestinyProgressionRewardDefinition instance,
) => <String, dynamic>{
  'progressionMappingHash': instance.progressionMappingHash,
  'amount': instance.amount,
  'applyThrottles': instance.applyThrottles,
};
