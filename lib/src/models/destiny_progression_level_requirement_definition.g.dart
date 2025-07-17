// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_level_requirement_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionLevelRequirementDefinition
    _$DestinyProgressionLevelRequirementDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyProgressionLevelRequirementDefinition()
          ..requirementCurve = (json['requirementCurve'] as List<dynamic>?)
              ?.map((e) =>
                  InterpolationPointFloat.fromJson(e as Map<String, dynamic>))
              .toList()
          ..progressionHash = (json['progressionHash'] as num?)?.toInt()
          ..hash = (json['hash'] as num?)?.toInt()
          ..index = (json['index'] as num?)?.toInt()
          ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyProgressionLevelRequirementDefinitionToJson(
        DestinyProgressionLevelRequirementDefinition instance) =>
    <String, dynamic>{
      'requirementCurve':
          instance.requirementCurve?.map((e) => e.toJson()).toList(),
      'progressionHash': instance.progressionHash,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
