// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_faction_progression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFactionProgression _$DestinyFactionProgressionFromJson(
        Map<String, dynamic> json) =>
    DestinyFactionProgression()
      ..factionHash = json['factionHash'] as int?
      ..factionVendorIndex = json['factionVendorIndex'] as int?
      ..progressionHash = json['progressionHash'] as int?
      ..dailyProgress = json['dailyProgress'] as int?
      ..dailyLimit = json['dailyLimit'] as int?
      ..weeklyProgress = json['weeklyProgress'] as int?
      ..weeklyLimit = json['weeklyLimit'] as int?
      ..currentProgress = json['currentProgress'] as int?
      ..level = json['level'] as int?
      ..levelCap = json['levelCap'] as int?
      ..stepIndex = json['stepIndex'] as int?
      ..progressToNextLevel = json['progressToNextLevel'] as int?
      ..nextLevelAt = json['nextLevelAt'] as int?
      ..currentResetCount = json['currentResetCount'] as int?
      ..seasonResets = (json['seasonResets'] as List<dynamic>?)
          ?.map((e) =>
              DestinyProgressionResetEntry.fromJson(e as Map<String, dynamic>))
          .toList()
      ..rewardItemStates = (json['rewardItemStates'] as List<dynamic>?)
          ?.map((e) => DestinyProgressionRewardItemState.fromJson(e as int))
          .toList();

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
      'seasonResets': instance.seasonResets,
      'rewardItemStates': instance.rewardItemStates,
    };
