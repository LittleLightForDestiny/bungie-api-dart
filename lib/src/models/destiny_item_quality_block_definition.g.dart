// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_quality_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemQualityBlockDefinition _$DestinyItemQualityBlockDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemQualityBlockDefinition()
      ..itemLevels = (json['itemLevels'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..qualityLevel = (json['qualityLevel'] as num?)?.toInt()
      ..infusionCategoryName = json['infusionCategoryName'] as String?
      ..infusionCategoryHash = (json['infusionCategoryHash'] as num?)?.toInt()
      ..infusionCategoryHashes =
          (json['infusionCategoryHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..progressionLevelRequirementHash =
          (json['progressionLevelRequirementHash'] as num?)?.toInt()
      ..currentVersion = (json['currentVersion'] as num?)?.toInt()
      ..versions = (json['versions'] as List<dynamic>?)
          ?.map((e) =>
              DestinyItemVersionDefinition.fromJson(e as Map<String, dynamic>))
          .toList()
      ..displayVersionWatermarkIcons =
          (json['displayVersionWatermarkIcons'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList();

Map<String, dynamic> _$DestinyItemQualityBlockDefinitionToJson(
        DestinyItemQualityBlockDefinition instance) =>
    <String, dynamic>{
      'itemLevels': instance.itemLevels,
      'qualityLevel': instance.qualityLevel,
      'infusionCategoryName': instance.infusionCategoryName,
      'infusionCategoryHash': instance.infusionCategoryHash,
      'infusionCategoryHashes': instance.infusionCategoryHashes,
      'progressionLevelRequirementHash':
          instance.progressionLevelRequirementHash,
      'currentVersion': instance.currentVersion,
      'versions': instance.versions?.map((e) => e.toJson()).toList(),
      'displayVersionWatermarkIcons': instance.displayVersionWatermarkIcons,
    };
