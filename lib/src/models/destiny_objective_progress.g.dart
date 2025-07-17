// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_objective_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyObjectiveProgress _$DestinyObjectiveProgressFromJson(
        Map<String, dynamic> json) =>
    DestinyObjectiveProgress()
      ..objectiveHash = (json['objectiveHash'] as num?)?.toInt()
      ..destinationHash = (json['destinationHash'] as num?)?.toInt()
      ..activityHash = (json['activityHash'] as num?)?.toInt()
      ..progress = (json['progress'] as num?)?.toInt()
      ..completionValue = (json['completionValue'] as num?)?.toInt()
      ..complete = json['complete'] as bool?
      ..visible = json['visible'] as bool?;

Map<String, dynamic> _$DestinyObjectiveProgressToJson(
        DestinyObjectiveProgress instance) =>
    <String, dynamic>{
      'objectiveHash': instance.objectiveHash,
      'destinationHash': instance.destinationHash,
      'activityHash': instance.activityHash,
      'progress': instance.progress,
      'completionValue': instance.completionValue,
      'complete': instance.complete,
      'visible': instance.visible,
    };
