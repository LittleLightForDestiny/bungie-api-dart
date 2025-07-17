// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneActivity _$DestinyMilestoneActivityFromJson(
  Map<String, dynamic> json,
) =>
    DestinyMilestoneActivity()
      ..activityHash = (json['activityHash'] as num?)?.toInt()
      ..activityModeHash = (json['activityModeHash'] as num?)?.toInt()
      ..activityModeType = (json['activityModeType'] as num?)?.toInt()
      ..modifierHashes =
          (json['modifierHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..variants =
          (json['variants'] as List<dynamic>?)
              ?.map(
                (e) => DestinyMilestoneActivityVariant.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyMilestoneActivityToJson(
  DestinyMilestoneActivity instance,
) => <String, dynamic>{
  'activityHash': instance.activityHash,
  'activityModeHash': instance.activityModeHash,
  'activityModeType': instance.activityModeType,
  'modifierHashes': instance.modifierHashes,
  'variants': instance.variants?.map((e) => e.toJson()).toList(),
};
