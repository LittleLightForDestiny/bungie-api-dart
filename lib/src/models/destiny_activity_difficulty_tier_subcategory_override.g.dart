// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_difficulty_tier_subcategory_override.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityDifficultyTierSubcategoryOverride
_$DestinyActivityDifficultyTierSubcategoryOverrideFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivityDifficultyTierSubcategoryOverride()
      ..skullSubcategoryHash = (json['skullSubcategoryHash'] as num?)?.toInt()
      ..refreshTimeMinutes = (json['refreshTimeMinutes'] as num?)?.toInt()
      ..refreshTimeOffsetMinutes =
          (json['refreshTimeOffsetMinutes'] as num?)?.toInt();

Map<String, dynamic> _$DestinyActivityDifficultyTierSubcategoryOverrideToJson(
  DestinyActivityDifficultyTierSubcategoryOverride instance,
) => <String, dynamic>{
  'skullSubcategoryHash': instance.skullSubcategoryHash,
  'refreshTimeMinutes': instance.refreshTimeMinutes,
  'refreshTimeOffsetMinutes': instance.refreshTimeOffsetMinutes,
};
