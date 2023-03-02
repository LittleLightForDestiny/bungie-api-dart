// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_social_commendation_node_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySocialCommendationNodeDefinition
    _$DestinySocialCommendationNodeDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinySocialCommendationNodeDefinition()
          ..displayProperties = json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                  json['displayProperties'] as Map<String, dynamic>)
          ..color = json['color'] == null
              ? null
              : DestinyColor.fromJson(json['color'] as Map<String, dynamic>)
          ..parentCommendationNodeHash =
              json['parentCommendationNodeHash'] as int?
          ..childCommendationNodeHashes =
              (json['childCommendationNodeHashes'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toList()
          ..childCommendationHashes =
              (json['childCommendationHashes'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toList()
          ..hash = json['hash'] as int?
          ..index = json['index'] as int?
          ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySocialCommendationNodeDefinitionToJson(
        DestinySocialCommendationNodeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'color': instance.color?.toJson(),
      'parentCommendationNodeHash': instance.parentCommendationNodeHash,
      'childCommendationNodeHashes': instance.childCommendationNodeHashes,
      'childCommendationHashes': instance.childCommendationHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
