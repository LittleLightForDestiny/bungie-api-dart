// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_difficulty_tier_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityDifficultyTierComponent
_$DestinyActivityDifficultyTierComponentFromJson(Map<String, dynamic> json) =>
    DestinyActivityDifficultyTierComponent()
      ..difficultyTierIndex = (json['difficultyTierIndex'] as num?)?.toInt()
      ..fixedActivitySkulls = (json['fixedActivitySkulls'] as List<dynamic>?)
          ?.map(
            (e) => DestinyActivitySkullComponent.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList();

Map<String, dynamic> _$DestinyActivityDifficultyTierComponentToJson(
  DestinyActivityDifficultyTierComponent instance,
) => <String, dynamic>{
  'difficultyTierIndex': instance.difficultyTierIndex,
  'fixedActivitySkulls': instance.fixedActivitySkulls
      ?.map((e) => e.toJson())
      .toList(),
};
