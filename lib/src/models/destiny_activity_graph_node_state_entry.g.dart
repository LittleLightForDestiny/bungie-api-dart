// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_graph_node_state_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityGraphNodeStateEntry _$DestinyActivityGraphNodeStateEntryFromJson(
        Map<String, dynamic> json) =>
    DestinyActivityGraphNodeStateEntry()
      ..state = decodeDestinyGraphNodeState(json['state']);

Map<String, dynamic> _$DestinyActivityGraphNodeStateEntryToJson(
        DestinyActivityGraphNodeStateEntry instance) =>
    <String, dynamic>{
      'state': encodeDestinyGraphNodeState(instance.state),
    };
