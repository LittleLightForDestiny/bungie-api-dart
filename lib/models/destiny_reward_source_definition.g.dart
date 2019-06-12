// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_reward_source_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRewardSourceDefinition _$DestinyRewardSourceDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyRewardSourceDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..category = json['category'] as int
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyRewardSourceDefinitionToJson(
        DestinyRewardSourceDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'category': instance.category,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted
    };
