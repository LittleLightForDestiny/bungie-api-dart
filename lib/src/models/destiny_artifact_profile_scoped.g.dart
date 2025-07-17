// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_artifact_profile_scoped.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArtifactProfileScoped _$DestinyArtifactProfileScopedFromJson(
  Map<String, dynamic> json,
) =>
    DestinyArtifactProfileScoped()
      ..artifactHash = (json['artifactHash'] as num?)?.toInt()
      ..pointProgression =
          json['pointProgression'] == null
              ? null
              : DestinyProgression.fromJson(
                json['pointProgression'] as Map<String, dynamic>,
              )
      ..pointsAcquired = (json['pointsAcquired'] as num?)?.toInt()
      ..powerBonusProgression =
          json['powerBonusProgression'] == null
              ? null
              : DestinyProgression.fromJson(
                json['powerBonusProgression'] as Map<String, dynamic>,
              )
      ..powerBonus = (json['powerBonus'] as num?)?.toInt();

Map<String, dynamic> _$DestinyArtifactProfileScopedToJson(
  DestinyArtifactProfileScoped instance,
) => <String, dynamic>{
  'artifactHash': instance.artifactHash,
  'pointProgression': instance.pointProgression?.toJson(),
  'pointsAcquired': instance.pointsAcquired,
  'powerBonusProgression': instance.powerBonusProgression?.toJson(),
  'powerBonus': instance.powerBonus,
};
