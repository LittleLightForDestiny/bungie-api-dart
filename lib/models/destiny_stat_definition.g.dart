// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_stat_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyStatDefinition _$DestinyStatDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyStatDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..aggregationType = json['aggregationType'] as int
    ..hasComputedBlock = json['hasComputedBlock'] as bool
    ..statCategory = json['statCategory'] as int
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyStatDefinitionToJson(
        DestinyStatDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'aggregationType': instance.aggregationType,
      'hasComputedBlock': instance.hasComputedBlock,
      'statCategory': instance.statCategory,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
