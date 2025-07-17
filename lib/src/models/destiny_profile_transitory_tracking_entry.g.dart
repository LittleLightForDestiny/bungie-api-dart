// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_transitory_tracking_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileTransitoryTrackingEntry
    _$DestinyProfileTransitoryTrackingEntryFromJson(
            Map<String, dynamic> json) =>
        DestinyProfileTransitoryTrackingEntry()
          ..locationHash = (json['locationHash'] as num?)?.toInt()
          ..itemHash = (json['itemHash'] as num?)?.toInt()
          ..objectiveHash = (json['objectiveHash'] as num?)?.toInt()
          ..activityHash = (json['activityHash'] as num?)?.toInt()
          ..questlineItemHash = (json['questlineItemHash'] as num?)?.toInt()
          ..trackedDate = json['trackedDate'] as String?;

Map<String, dynamic> _$DestinyProfileTransitoryTrackingEntryToJson(
        DestinyProfileTransitoryTrackingEntry instance) =>
    <String, dynamic>{
      'locationHash': instance.locationHash,
      'itemHash': instance.itemHash,
      'objectiveHash': instance.objectiveHash,
      'activityHash': instance.activityHash,
      'questlineItemHash': instance.questlineItemHash,
      'trackedDate': instance.trackedDate,
    };
