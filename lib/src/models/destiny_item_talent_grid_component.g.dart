// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_talent_grid_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemTalentGridComponent _$DestinyItemTalentGridComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyItemTalentGridComponent()
    ..talentGridHash = json['talentGridHash'] as int?
    ..nodes = (json['nodes'] as List<dynamic>?)
        ?.map((e) => DestinyTalentNode.fromJson(e as Map<String, dynamic>))
        .toList()
    ..isGridComplete = json['isGridComplete'] as bool?
    ..gridProgression = json['gridProgression'] == null
        ? null
        : DestinyProgression.fromJson(
            json['gridProgression'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyItemTalentGridComponentToJson(
        DestinyItemTalentGridComponent instance) =>
    <String, dynamic>{
      'talentGridHash': instance.talentGridHash,
      'nodes': instance.nodes,
      'isGridComplete': instance.isGridComplete,
      'gridProgression': instance.gridProgression,
    };
