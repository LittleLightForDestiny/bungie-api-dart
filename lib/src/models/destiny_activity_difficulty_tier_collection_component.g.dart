// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_difficulty_tier_collection_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityDifficultyTierCollectionComponent
_$DestinyActivityDifficultyTierCollectionComponentFromJson(
  Map<String, dynamic> json,
) => DestinyActivityDifficultyTierCollectionComponent()
  ..difficultyTierCollectionHash =
      (json['difficultyTierCollectionHash'] as num?)?.toInt()
  ..difficultyTiers = (json['difficultyTiers'] as List<dynamic>?)
      ?.map(
        (e) => DestinyActivityDifficultyTierComponent.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList();

Map<String, dynamic> _$DestinyActivityDifficultyTierCollectionComponentToJson(
  DestinyActivityDifficultyTierCollectionComponent instance,
) => <String, dynamic>{
  'difficultyTierCollectionHash': instance.difficultyTierCollectionHash,
  'difficultyTiers': instance.difficultyTiers?.map((e) => e.toJson()).toList(),
};
