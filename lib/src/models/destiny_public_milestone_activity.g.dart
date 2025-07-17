// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_milestone_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicMilestoneActivity _$DestinyPublicMilestoneActivityFromJson(
  Map<String, dynamic> json,
) =>
    DestinyPublicMilestoneActivity()
      ..activityHash = (json['activityHash'] as num?)?.toInt()
      ..modifierHashes =
          (json['modifierHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..variants =
          (json['variants'] as List<dynamic>?)
              ?.map(
                (e) => DestinyPublicMilestoneActivityVariant.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..activityModeHash = (json['activityModeHash'] as num?)?.toInt()
      ..activityModeType = (json['activityModeType'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPublicMilestoneActivityToJson(
  DestinyPublicMilestoneActivity instance,
) => <String, dynamic>{
  'activityHash': instance.activityHash,
  'modifierHashes': instance.modifierHashes,
  'variants': instance.variants?.map((e) => e.toJson()).toList(),
  'activityModeHash': instance.activityModeHash,
  'activityModeType': instance.activityModeType,
};
