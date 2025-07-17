// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_milestone_activity_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicMilestoneActivityVariant
    _$DestinyPublicMilestoneActivityVariantFromJson(
            Map<String, dynamic> json) =>
        DestinyPublicMilestoneActivityVariant()
          ..activityHash = (json['activityHash'] as num?)?.toInt()
          ..activityModeHash = (json['activityModeHash'] as num?)?.toInt()
          ..activityModeType = (json['activityModeType'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPublicMilestoneActivityVariantToJson(
        DestinyPublicMilestoneActivityVariant instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'activityModeHash': instance.activityModeHash,
      'activityModeType': instance.activityModeType,
    };
