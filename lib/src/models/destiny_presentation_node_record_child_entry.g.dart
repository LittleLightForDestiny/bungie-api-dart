// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_node_record_child_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodeRecordChildEntry
    _$DestinyPresentationNodeRecordChildEntryFromJson(
            Map<String, dynamic> json) =>
        DestinyPresentationNodeRecordChildEntry()
          ..recordHash = (json['recordHash'] as num?)?.toInt()
          ..nodeDisplayPriority =
              (json['nodeDisplayPriority'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPresentationNodeRecordChildEntryToJson(
        DestinyPresentationNodeRecordChildEntry instance) =>
    <String, dynamic>{
      'recordHash': instance.recordHash,
      'nodeDisplayPriority': instance.nodeDisplayPriority,
    };
