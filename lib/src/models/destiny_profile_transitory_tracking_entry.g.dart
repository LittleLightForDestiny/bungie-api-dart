// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_transitory_tracking_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileTransitoryTrackingEntry
    _$DestinyProfileTransitoryTrackingEntryFromJson(
            Map<String, dynamic> json) =>
        DestinyProfileTransitoryTrackingEntry()
          ..locationHash = json['locationHash'] as int?
          ..itemHash = json['itemHash'] as int?
          ..objectiveHash = json['objectiveHash'] as int?
          ..activityHash = json['activityHash'] as int?
          ..questlineItemHash = json['questlineItemHash'] as int?
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
