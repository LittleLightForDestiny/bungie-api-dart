// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_reward_source_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRewardSourceDefinition _$DestinyRewardSourceDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyRewardSourceDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..category = decodeDestinyRewardSourceCategory(json['category'])
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyRewardSourceDefinitionToJson(
        DestinyRewardSourceDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'category': encodeDestinyRewardSourceCategory(instance.category),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
