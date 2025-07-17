// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_node_child_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodeChildEntry _$DestinyPresentationNodeChildEntryFromJson(
  Map<String, dynamic> json,
) =>
    DestinyPresentationNodeChildEntry()
      ..presentationNodeHash = (json['presentationNodeHash'] as num?)?.toInt()
      ..nodeDisplayPriority = (json['nodeDisplayPriority'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPresentationNodeChildEntryToJson(
  DestinyPresentationNodeChildEntry instance,
) => <String, dynamic>{
  'presentationNodeHash': instance.presentationNodeHash,
  'nodeDisplayPriority': instance.nodeDisplayPriority,
};
