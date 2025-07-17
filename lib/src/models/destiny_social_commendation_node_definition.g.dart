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
          ..tintedIcon = json['tintedIcon'] as String?
          ..parentCommendationNodeHash =
              (json['parentCommendationNodeHash'] as num?)?.toInt()
          ..childCommendationNodeHashes =
              (json['childCommendationNodeHashes'] as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()
          ..childCommendationHashes =
              (json['childCommendationHashes'] as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()
          ..hash = (json['hash'] as num?)?.toInt()
          ..index = (json['index'] as num?)?.toInt()
          ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySocialCommendationNodeDefinitionToJson(
        DestinySocialCommendationNodeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'color': instance.color?.toJson(),
      'tintedIcon': instance.tintedIcon,
      'parentCommendationNodeHash': instance.parentCommendationNodeHash,
      'childCommendationNodeHashes': instance.childCommendationNodeHashes,
      'childCommendationHashes': instance.childCommendationHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
