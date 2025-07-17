// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_linked_graph_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLinkedGraphDefinition _$DestinyLinkedGraphDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyLinkedGraphDefinition()
      ..description = json['description'] as String?
      ..name = json['name'] as String?
      ..unlockExpression =
          json['unlockExpression'] == null
              ? null
              : DestinyUnlockExpressionDefinition.fromJson(
                json['unlockExpression'] as Map<String, dynamic>,
              )
      ..linkedGraphId = (json['linkedGraphId'] as num?)?.toInt()
      ..linkedGraphs =
          (json['linkedGraphs'] as List<dynamic>?)
              ?.map(
                (e) => DestinyLinkedGraphEntryDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..overview = json['overview'] as String?;

Map<String, dynamic> _$DestinyLinkedGraphDefinitionToJson(
  DestinyLinkedGraphDefinition instance,
) => <String, dynamic>{
  'description': instance.description,
  'name': instance.name,
  'unlockExpression': instance.unlockExpression?.toJson(),
  'linkedGraphId': instance.linkedGraphId,
  'linkedGraphs': instance.linkedGraphs?.map((e) => e.toJson()).toList(),
  'overview': instance.overview,
};
