// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_node_metric_child_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodeMetricChildEntry
_$DestinyPresentationNodeMetricChildEntryFromJson(Map<String, dynamic> json) =>
    DestinyPresentationNodeMetricChildEntry()
      ..metricHash = (json['metricHash'] as num?)?.toInt()
      ..nodeDisplayPriority = (json['nodeDisplayPriority'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPresentationNodeMetricChildEntryToJson(
  DestinyPresentationNodeMetricChildEntry instance,
) => <String, dynamic>{
  'metricHash': instance.metricHash,
  'nodeDisplayPriority': instance.nodeDisplayPriority,
};
