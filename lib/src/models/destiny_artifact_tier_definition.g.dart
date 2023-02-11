// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_artifact_tier_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArtifactTierDefinition _$DestinyArtifactTierDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyArtifactTierDefinition()
      ..tierHash = json['tierHash'] as int?
      ..displayTitle = json['displayTitle'] as String?
      ..progressRequirementMessage =
          json['progressRequirementMessage'] as String?
      ..items = (json['items'] as List<dynamic>?)
          ?.map((e) => DestinyArtifactTierItemDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..minimumUnlockPointsUsedRequirement =
          json['minimumUnlockPointsUsedRequirement'] as int?;

Map<String, dynamic> _$DestinyArtifactTierDefinitionToJson(
        DestinyArtifactTierDefinition instance) =>
    <String, dynamic>{
      'tierHash': instance.tierHash,
      'displayTitle': instance.displayTitle,
      'progressRequirementMessage': instance.progressRequirementMessage,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'minimumUnlockPointsUsedRequirement':
          instance.minimumUnlockPointsUsedRequirement,
    };
