// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_activity_phase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneActivityPhase _$DestinyMilestoneActivityPhaseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyMilestoneActivityPhase()
      ..complete = json['complete'] as bool?
      ..phaseHash = (json['phaseHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyMilestoneActivityPhaseToJson(
  DestinyMilestoneActivityPhase instance,
) => <String, dynamic>{
  'complete': instance.complete,
  'phaseHash': instance.phaseHash,
};
