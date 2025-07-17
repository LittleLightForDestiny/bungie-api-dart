// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_challenge_activity_graph_node_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneChallengeActivityGraphNodeEntry
    _$DestinyMilestoneChallengeActivityGraphNodeEntryFromJson(
            Map<String, dynamic> json) =>
        DestinyMilestoneChallengeActivityGraphNodeEntry()
          ..activityGraphHash = (json['activityGraphHash'] as num?)?.toInt()
          ..activityGraphNodeHash =
              (json['activityGraphNodeHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyMilestoneChallengeActivityGraphNodeEntryToJson(
        DestinyMilestoneChallengeActivityGraphNodeEntry instance) =>
    <String, dynamic>{
      'activityGraphHash': instance.activityGraphHash,
      'activityGraphNodeHash': instance.activityGraphNodeHash,
    };
