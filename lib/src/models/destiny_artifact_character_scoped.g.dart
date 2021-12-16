// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_artifact_character_scoped.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArtifactCharacterScoped _$DestinyArtifactCharacterScopedFromJson(
    Map<String, dynamic> json) {
  return DestinyArtifactCharacterScoped()
    ..artifactHash = json['artifactHash'] as int?
    ..pointsUsed = json['pointsUsed'] as int?
    ..resetCount = json['resetCount'] as int?
    ..tiers = (json['tiers'] as List<dynamic>?)
        ?.map((e) => DestinyArtifactTier.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DestinyArtifactCharacterScopedToJson(
        DestinyArtifactCharacterScoped instance) =>
    <String, dynamic>{
      'artifactHash': instance.artifactHash,
      'pointsUsed': instance.pointsUsed,
      'resetCount': instance.resetCount,
      'tiers': instance.tiers,
    };
