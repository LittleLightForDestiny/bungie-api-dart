// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_activity_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneActivityVariant _$DestinyMilestoneActivityVariantFromJson(
    Map<String, dynamic> json) {
  return DestinyMilestoneActivityVariant()
    ..activityHash = json['activityHash'] as int
    ..completionStatus = json['completionStatus'] == null
        ? null
        : DestinyMilestoneActivityCompletionStatus.fromJson(
            json['completionStatus'] as Map<String, dynamic>)
    ..activityModeHash = json['activityModeHash'] as int
    ..activityModeType = json['activityModeType'] as int;
}

Map<String, dynamic> _$DestinyMilestoneActivityVariantToJson(
        DestinyMilestoneActivityVariant instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'completionStatus': instance.completionStatus,
      'activityModeHash': instance.activityModeHash,
      'activityModeType': instance.activityModeType,
    };
