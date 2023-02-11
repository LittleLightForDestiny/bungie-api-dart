// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_node_stat_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentNodeStatBlock _$DestinyTalentNodeStatBlockFromJson(
        Map<String, dynamic> json) =>
    DestinyTalentNodeStatBlock()
      ..currentStepStats = (json['currentStepStats'] as List<dynamic>?)
          ?.map((e) => DestinyStat.fromJson(e as Map<String, dynamic>))
          .toList()
      ..nextStepStats = (json['nextStepStats'] as List<dynamic>?)
          ?.map((e) => DestinyStat.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyTalentNodeStatBlockToJson(
        DestinyTalentNodeStatBlock instance) =>
    <String, dynamic>{
      'currentStepStats':
          instance.currentStepStats?.map((e) => e.toJson()).toList(),
      'nextStepStats': instance.nextStepStats?.map((e) => e.toJson()).toList(),
    };
