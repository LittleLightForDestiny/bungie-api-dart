// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_faction_progression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFactionProgression _$DestinyFactionProgressionFromJson(
        Map<String, dynamic> json) =>
    DestinyFactionProgression()
      ..factionHash = (json['factionHash'] as num?)?.toInt()
      ..factionVendorIndex = (json['factionVendorIndex'] as num?)?.toInt()
      ..progressionHash = (json['progressionHash'] as num?)?.toInt()
      ..dailyProgress = (json['dailyProgress'] as num?)?.toInt()
      ..dailyLimit = (json['dailyLimit'] as num?)?.toInt()
      ..weeklyProgress = (json['weeklyProgress'] as num?)?.toInt()
      ..weeklyLimit = (json['weeklyLimit'] as num?)?.toInt()
      ..currentProgress = (json['currentProgress'] as num?)?.toInt()
      ..level = (json['level'] as num?)?.toInt()
      ..levelCap = (json['levelCap'] as num?)?.toInt()
      ..stepIndex = (json['stepIndex'] as num?)?.toInt()
      ..progressToNextLevel = (json['progressToNextLevel'] as num?)?.toInt()
      ..nextLevelAt = (json['nextLevelAt'] as num?)?.toInt()
      ..currentResetCount = (json['currentResetCount'] as num?)?.toInt()
      ..seasonResets = (json['seasonResets'] as List<dynamic>?)
          ?.map((e) =>
              DestinyProgressionResetEntry.fromJson(e as Map<String, dynamic>))
          .toList()
      ..rewardItemStates = (json['rewardItemStates'] as List<dynamic>?)
          ?.map((e) =>
              DestinyProgressionRewardItemState.fromJson((e as num).toInt()))
          .toList()
      ..rewardItemSocketOverrideStates =
          (json['rewardItemSocketOverrideStates'] as Map<String, dynamic>?)
              ?.map(
        (k, e) => MapEntry(
            k,
            DestinyProgressionRewardItemSocketOverrideState.fromJson(
                e as Map<String, dynamic>)),
      );

Map<String, dynamic> _$DestinyFactionProgressionToJson(
        DestinyFactionProgression instance) =>
    <String, dynamic>{
      'factionHash': instance.factionHash,
      'factionVendorIndex': instance.factionVendorIndex,
      'progressionHash': instance.progressionHash,
      'dailyProgress': instance.dailyProgress,
      'dailyLimit': instance.dailyLimit,
      'weeklyProgress': instance.weeklyProgress,
      'weeklyLimit': instance.weeklyLimit,
      'currentProgress': instance.currentProgress,
      'level': instance.level,
      'levelCap': instance.levelCap,
      'stepIndex': instance.stepIndex,
      'progressToNextLevel': instance.progressToNextLevel,
      'nextLevelAt': instance.nextLevelAt,
      'currentResetCount': instance.currentResetCount,
      'seasonResets': instance.seasonResets?.map((e) => e.toJson()).toList(),
      'rewardItemStates':
          instance.rewardItemStates?.map((e) => e.toJson()).toList(),
      'rewardItemSocketOverrideStates': instance.rewardItemSocketOverrideStates
          ?.map((k, e) => MapEntry(k, e.toJson())),
    };
