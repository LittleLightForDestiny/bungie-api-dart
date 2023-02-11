// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivity _$DestinyActivityFromJson(Map<String, dynamic> json) =>
    DestinyActivity()
      ..activityHash = json['activityHash'] as int?
      ..isNew = json['isNew'] as bool?
      ..canLead = json['canLead'] as bool?
      ..canJoin = json['canJoin'] as bool?
      ..isCompleted = json['isCompleted'] as bool?
      ..isVisible = json['isVisible'] as bool?
      ..displayLevel = json['displayLevel'] as int?
      ..recommendedLight = json['recommendedLight'] as int?
      ..difficultyTier =
          decodeDestinyActivityDifficultyTier(json['difficultyTier'])
      ..challenges = (json['challenges'] as List<dynamic>?)
          ?.map(
              (e) => DestinyChallengeStatus.fromJson(e as Map<String, dynamic>))
          .toList()
      ..modifierHashes = (json['modifierHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..booleanActivityOptions =
          (json['booleanActivityOptions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      )
      ..loadoutRequirementIndex = json['loadoutRequirementIndex'] as int?;

Map<String, dynamic> _$DestinyActivityToJson(DestinyActivity instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'isNew': instance.isNew,
      'canLead': instance.canLead,
      'canJoin': instance.canJoin,
      'isCompleted': instance.isCompleted,
      'isVisible': instance.isVisible,
      'displayLevel': instance.displayLevel,
      'recommendedLight': instance.recommendedLight,
      'difficultyTier':
          encodeDestinyActivityDifficultyTier(instance.difficultyTier),
      'challenges': instance.challenges?.map((e) => e.toJson()).toList(),
      'modifierHashes': instance.modifierHashes,
      'booleanActivityOptions': instance.booleanActivityOptions,
      'loadoutRequirementIndex': instance.loadoutRequirementIndex,
    };
