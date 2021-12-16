// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_nodes_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodesComponent _$DestinyPresentationNodesComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyPresentationNodesComponent()
    ..nodes = (json['nodes'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k,
          DestinyPresentationNodeComponent.fromJson(e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$DestinyPresentationNodesComponentToJson(
        DestinyPresentationNodesComponent instance) =>
    <String, dynamic>{
      'nodes': instance.nodes,
    };
