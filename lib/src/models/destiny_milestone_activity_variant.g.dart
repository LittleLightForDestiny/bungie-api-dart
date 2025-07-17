// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_activity_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneActivityVariant _$DestinyMilestoneActivityVariantFromJson(
        Map<String, dynamic> json) =>
    DestinyMilestoneActivityVariant()
      ..activityHash = (json['activityHash'] as num?)?.toInt()
      ..completionStatus = json['completionStatus'] == null
          ? null
          : DestinyMilestoneActivityCompletionStatus.fromJson(
              json['completionStatus'] as Map<String, dynamic>)
      ..activityModeHash = (json['activityModeHash'] as num?)?.toInt()
      ..activityModeType = (json['activityModeType'] as num?)?.toInt();

Map<String, dynamic> _$DestinyMilestoneActivityVariantToJson(
        DestinyMilestoneActivityVariant instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'completionStatus': instance.completionStatus?.toJson(),
      'activityModeHash': instance.activityModeHash,
      'activityModeType': instance.activityModeType,
    };
