// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_node_stat_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentNodeStatBlock _$DestinyTalentNodeStatBlockFromJson(
    Map<String, dynamic> json) {
  return DestinyTalentNodeStatBlock()
    ..currentStepStats = (json['currentStepStats'] as List)
        ?.map((e) =>
            e == null ? null : DestinyStat.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..nextStepStats = (json['nextStepStats'] as List)
        ?.map((e) =>
            e == null ? null : DestinyStat.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyTalentNodeStatBlockToJson(
        DestinyTalentNodeStatBlock instance) =>
    <String, dynamic>{
      'currentStepStats': instance.currentStepStats,
      'nextStepStats': instance.nextStepStats
    };
