// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_stat_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyStatDefinition _$DestinyStatDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyStatDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..aggregationType =
          decodeDestinyStatAggregationType(json['aggregationType'])
      ..hasComputedBlock = json['hasComputedBlock'] as bool?
      ..statCategory = decodeDestinyStatCategory(json['statCategory'])
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyStatDefinitionToJson(
        DestinyStatDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'aggregationType':
          encodeDestinyStatAggregationType(instance.aggregationType),
      'hasComputedBlock': instance.hasComputedBlock,
      'statCategory': encodeDestinyStatCategory(instance.statCategory),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
