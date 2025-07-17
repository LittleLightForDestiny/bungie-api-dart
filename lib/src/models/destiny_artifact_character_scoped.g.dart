// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_artifact_character_scoped.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArtifactCharacterScoped _$DestinyArtifactCharacterScopedFromJson(
        Map<String, dynamic> json) =>
    DestinyArtifactCharacterScoped()
      ..artifactHash = (json['artifactHash'] as num?)?.toInt()
      ..pointsUsed = (json['pointsUsed'] as num?)?.toInt()
      ..resetCount = (json['resetCount'] as num?)?.toInt()
      ..tiers = (json['tiers'] as List<dynamic>?)
          ?.map((e) => DestinyArtifactTier.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyArtifactCharacterScopedToJson(
        DestinyArtifactCharacterScoped instance) =>
    <String, dynamic>{
      'artifactHash': instance.artifactHash,
      'pointsUsed': instance.pointsUsed,
      'resetCount': instance.resetCount,
      'tiers': instance.tiers?.map((e) => e.toJson()).toList(),
    };
