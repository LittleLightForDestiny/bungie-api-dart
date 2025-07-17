// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_node_collectible_child_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodeCollectibleChildEntry
_$DestinyPresentationNodeCollectibleChildEntryFromJson(
  Map<String, dynamic> json,
) =>
    DestinyPresentationNodeCollectibleChildEntry()
      ..collectibleHash = (json['collectibleHash'] as num?)?.toInt()
      ..nodeDisplayPriority = (json['nodeDisplayPriority'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPresentationNodeCollectibleChildEntryToJson(
  DestinyPresentationNodeCollectibleChildEntry instance,
) => <String, dynamic>{
  'collectibleHash': instance.collectibleHash,
  'nodeDisplayPriority': instance.nodeDisplayPriority,
};
