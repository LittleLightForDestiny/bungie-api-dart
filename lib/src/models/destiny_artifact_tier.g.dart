// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_artifact_tier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArtifactTier _$DestinyArtifactTierFromJson(Map<String, dynamic> json) =>
    DestinyArtifactTier()
      ..tierHash = (json['tierHash'] as num?)?.toInt()
      ..isUnlocked = json['isUnlocked'] as bool?
      ..pointsToUnlock = (json['pointsToUnlock'] as num?)?.toInt()
      ..items =
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) =>
                    DestinyArtifactTierItem.fromJson(e as Map<String, dynamic>),
              )
              .toList();

Map<String, dynamic> _$DestinyArtifactTierToJson(
  DestinyArtifactTier instance,
) => <String, dynamic>{
  'tierHash': instance.tierHash,
  'isUnlocked': instance.isUnlocked,
  'pointsToUnlock': instance.pointsToUnlock,
  'items': instance.items?.map((e) => e.toJson()).toList(),
};
