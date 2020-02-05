// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_milestone_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicMilestoneActivity _$DestinyPublicMilestoneActivityFromJson(
    Map<String, dynamic> json) {
  return DestinyPublicMilestoneActivity()
    ..activityHash = json['activityHash'] as int
    ..modifierHashes =
        (json['modifierHashes'] as List)?.map((e) => e as int)?.toList()
    ..variants = (json['variants'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyPublicMilestoneActivityVariant.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..activityModeHash = json['activityModeHash'] as int
    ..activityModeType = json['activityModeType'] as int;
}

Map<String, dynamic> _$DestinyPublicMilestoneActivityToJson(
        DestinyPublicMilestoneActivity instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'modifierHashes': instance.modifierHashes,
      'variants': instance.variants,
      'activityModeHash': instance.activityModeHash,
      'activityModeType': instance.activityModeType,
    };
