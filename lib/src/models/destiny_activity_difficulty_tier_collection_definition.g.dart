// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_difficulty_tier_collection_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityDifficultyTierCollectionDefinition
_$DestinyActivityDifficultyTierCollectionDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivityDifficultyTierCollectionDefinition()
      ..difficultyTiers =
          (json['difficultyTiers'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityDifficultyTierDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivityDifficultyTierCollectionDefinitionToJson(
  DestinyActivityDifficultyTierCollectionDefinition instance,
) => <String, dynamic>{
  'difficultyTiers': instance.difficultyTiers?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
