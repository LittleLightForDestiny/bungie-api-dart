// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_node_children_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodeChildrenBlock
    _$DestinyPresentationNodeChildrenBlockFromJson(Map<String, dynamic> json) =>
        DestinyPresentationNodeChildrenBlock()
          ..presentationNodes = (json['presentationNodes'] as List<dynamic>?)
              ?.map((e) => DestinyPresentationNodeChildEntry.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..collectibles = (json['collectibles'] as List<dynamic>?)
              ?.map((e) =>
                  DestinyPresentationNodeCollectibleChildEntry.fromJson(
                      e as Map<String, dynamic>))
              .toList()
          ..records = (json['records'] as List<dynamic>?)
              ?.map((e) => DestinyPresentationNodeRecordChildEntry.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..metrics = (json['metrics'] as List<dynamic>?)
              ?.map((e) => DestinyPresentationNodeMetricChildEntry.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..craftables = (json['craftables'] as List<dynamic>?)
              ?.map((e) => DestinyPresentationNodeCraftableChildEntry.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$DestinyPresentationNodeChildrenBlockToJson(
        DestinyPresentationNodeChildrenBlock instance) =>
    <String, dynamic>{
      'presentationNodes':
          instance.presentationNodes?.map((e) => e.toJson()).toList(),
      'collectibles': instance.collectibles?.map((e) => e.toJson()).toList(),
      'records': instance.records?.map((e) => e.toJson()).toList(),
      'metrics': instance.metrics?.map((e) => e.toJson()).toList(),
      'craftables': instance.craftables?.map((e) => e.toJson()).toList(),
    };
