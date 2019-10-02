// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_artifact_tier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArtifactTier _$DestinyArtifactTierFromJson(Map<String, dynamic> json) {
  return DestinyArtifactTier()
    ..tierHash = json['tierHash'] as int
    ..isUnlocked = json['isUnlocked'] as bool
    ..pointsToUnlock = json['pointsToUnlock'] as int
    ..items = (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyArtifactTierItem.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyArtifactTierToJson(
        DestinyArtifactTier instance) =>
    <String, dynamic>{
      'tierHash': instance.tierHash,
      'isUnlocked': instance.isUnlocked,
      'pointsToUnlock': instance.pointsToUnlock,
      'items': instance.items
    };
