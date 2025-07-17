// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_node_craftable_child_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodeCraftableChildEntry
    _$DestinyPresentationNodeCraftableChildEntryFromJson(
            Map<String, dynamic> json) =>
        DestinyPresentationNodeCraftableChildEntry()
          ..craftableItemHash = (json['craftableItemHash'] as num?)?.toInt()
          ..nodeDisplayPriority =
              (json['nodeDisplayPriority'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPresentationNodeCraftableChildEntryToJson(
        DestinyPresentationNodeCraftableChildEntry instance) =>
    <String, dynamic>{
      'craftableItemHash': instance.craftableItemHash,
      'nodeDisplayPriority': instance.nodeDisplayPriority,
    };
