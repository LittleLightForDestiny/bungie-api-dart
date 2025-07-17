// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_difficulty_tier_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityDifficultyTierDefinition
_$DestinyActivityDifficultyTierDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyActivityDifficultyTierDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..recommendedActivityLevelOffset =
          (json['recommendedActivityLevelOffset'] as num?)?.toInt()
      ..fixedActivitySkulls =
          (json['fixedActivitySkulls'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivitySkull.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..tierEnabledUnlockExpression =
          json['tierEnabledUnlockExpression'] == null
              ? null
              : DestinyUnlockExpressionDefinition.fromJson(
                json['tierEnabledUnlockExpression'] as Map<String, dynamic>,
              )
      ..tierType = decodeDestinyActivityDifficultyTierType(json['tierType'])
      ..optionalRequiredTrait = (json['optionalRequiredTrait'] as num?)?.toInt()
      ..activityLevel = (json['activityLevel'] as num?)?.toInt()
      ..tierRank = (json['tierRank'] as num?)?.toInt()
      ..minimumFireteamLeaderPower =
          (json['minimumFireteamLeaderPower'] as num?)?.toInt()
      ..maximumFireteamLeaderPower =
          (json['maximumFireteamLeaderPower'] as num?)?.toInt()
      ..scoreTimeLimitMultiplier =
          (json['scoreTimeLimitMultiplier'] as num?)?.toInt()
      ..selectableSkullCollectionHashes =
          (json['selectableSkullCollectionHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..skullSubcategoryOverrides =
          (json['skullSubcategoryOverrides'] as List<dynamic>?)
              ?.map(
                (e) =>
                    DestinyActivityDifficultyTierSubcategoryOverride.fromJson(
                      e as Map<String, dynamic>,
                    ),
              )
              .toList();

Map<String, dynamic> _$DestinyActivityDifficultyTierDefinitionToJson(
  DestinyActivityDifficultyTierDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'recommendedActivityLevelOffset': instance.recommendedActivityLevelOffset,
  'fixedActivitySkulls':
      instance.fixedActivitySkulls?.map((e) => e.toJson()).toList(),
  'tierEnabledUnlockExpression': instance.tierEnabledUnlockExpression?.toJson(),
  'tierType': encodeDestinyActivityDifficultyTierType(instance.tierType),
  'optionalRequiredTrait': instance.optionalRequiredTrait,
  'activityLevel': instance.activityLevel,
  'tierRank': instance.tierRank,
  'minimumFireteamLeaderPower': instance.minimumFireteamLeaderPower,
  'maximumFireteamLeaderPower': instance.maximumFireteamLeaderPower,
  'scoreTimeLimitMultiplier': instance.scoreTimeLimitMultiplier,
  'selectableSkullCollectionHashes': instance.selectableSkullCollectionHashes,
  'skullSubcategoryOverrides':
      instance.skullSubcategoryOverrides?.map((e) => e.toJson()).toList(),
};
