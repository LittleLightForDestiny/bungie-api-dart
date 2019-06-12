// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_level_requirement_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionLevelRequirementDefinition
    _$DestinyProgressionLevelRequirementDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyProgressionLevelRequirementDefinition()
    ..requirementCurve = (json['requirementCurve'] as List)
        ?.map((e) => e == null
            ? null
            : InterpolationPointFloat.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..progressionHash = json['progressionHash'] as int
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyProgressionLevelRequirementDefinitionToJson(
        DestinyProgressionLevelRequirementDefinition instance) =>
    <String, dynamic>{
      'requirementCurve': instance.requirementCurve,
      'progressionHash': instance.progressionHash,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
