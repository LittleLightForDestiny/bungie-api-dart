// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_activity_completion_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneActivityCompletionStatus
    _$DestinyMilestoneActivityCompletionStatusFromJson(
        Map<String, dynamic> json) {
  return DestinyMilestoneActivityCompletionStatus()
    ..completed = json['completed'] as bool?
    ..phases = (json['phases'] as List<dynamic>?)
        ?.map((e) =>
            DestinyMilestoneActivityPhase.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DestinyMilestoneActivityCompletionStatusToJson(
        DestinyMilestoneActivityCompletionStatus instance) =>
    <String, dynamic>{
      'completed': instance.completed,
      'phases': instance.phases,
    };
