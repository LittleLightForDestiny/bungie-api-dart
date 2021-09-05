// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_quality_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemQualityBlockDefinition _$DestinyItemQualityBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemQualityBlockDefinition()
    ..itemLevels =
        (json['itemLevels'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..qualityLevel = json['qualityLevel'] as int?
    ..infusionCategoryName = json['infusionCategoryName'] as String?
    ..infusionCategoryHash = json['infusionCategoryHash'] as int?
    ..infusionCategoryHashes =
        (json['infusionCategoryHashes'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList()
    ..progressionLevelRequirementHash =
        json['progressionLevelRequirementHash'] as int?
    ..currentVersion = json['currentVersion'] as int?
    ..versions = (json['versions'] as List<dynamic>?)
        ?.map((e) =>
            DestinyItemVersionDefinition.fromJson(e as Map<String, dynamic>))
        .toList()
    ..displayVersionWatermarkIcons =
        (json['displayVersionWatermarkIcons'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList();
}

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
      'versions': instance.versions,
      'displayVersionWatermarkIcons': instance.displayVersionWatermarkIcons,
    };
