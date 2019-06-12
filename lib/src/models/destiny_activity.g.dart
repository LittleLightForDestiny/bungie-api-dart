// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivity _$DestinyActivityFromJson(Map<String, dynamic> json) {
  return DestinyActivity()
    ..activityHash = json['activityHash'] as int
    ..isNew = json['isNew'] as bool
    ..canLead = json['canLead'] as bool
    ..canJoin = json['canJoin'] as bool
    ..isCompleted = json['isCompleted'] as bool
    ..isVisible = json['isVisible'] as bool
    ..displayLevel = json['displayLevel'] as int
    ..recommendedLight = json['recommendedLight'] as int
    ..difficultyTier = json['difficultyTier'] as int;
}

Map<String, dynamic> _$DestinyActivityToJson(DestinyActivity instance) =>
    <String, dynamic>{
      'activityHash': instance.activityHash,
      'isNew': instance.isNew,
      'canLead': instance.canLead,
      'canJoin': instance.canJoin,
      'isCompleted': instance.isCompleted,
      'isVisible': instance.isVisible,
      'displayLevel': instance.displayLevel,
      'recommendedLight': instance.recommendedLight,
      'difficultyTier': instance.difficultyTier
    };
