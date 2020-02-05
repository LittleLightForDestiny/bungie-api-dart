// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_artifact_profile_scoped.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArtifactProfileScoped _$DestinyArtifactProfileScopedFromJson(
    Map<String, dynamic> json) {
  return DestinyArtifactProfileScoped()
    ..artifactHash = json['artifactHash'] as int
    ..pointProgression = json['pointProgression'] == null
        ? null
        : DestinyProgression.fromJson(
            json['pointProgression'] as Map<String, dynamic>)
    ..pointsAcquired = json['pointsAcquired'] as int
    ..powerBonusProgression = json['powerBonusProgression'] == null
        ? null
        : DestinyProgression.fromJson(
            json['powerBonusProgression'] as Map<String, dynamic>)
    ..powerBonus = json['powerBonus'] as int;
}

Map<String, dynamic> _$DestinyArtifactProfileScopedToJson(
        DestinyArtifactProfileScoped instance) =>
    <String, dynamic>{
      'artifactHash': instance.artifactHash,
      'pointProgression': instance.pointProgression,
      'pointsAcquired': instance.pointsAcquired,
      'powerBonusProgression': instance.powerBonusProgression,
      'powerBonus': instance.powerBonus,
    };
