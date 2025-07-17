// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_artifact_tier_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArtifactTierItem _$DestinyArtifactTierItemFromJson(
        Map<String, dynamic> json) =>
    DestinyArtifactTierItem()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..isActive = json['isActive'] as bool?
      ..isVisible = json['isVisible'] as bool?;

Map<String, dynamic> _$DestinyArtifactTierItemToJson(
        DestinyArtifactTierItem instance) =>
    <String, dynamic>{
      'itemHash': instance.itemHash,
      'isActive': instance.isActive,
      'isVisible': instance.isVisible,
    };
