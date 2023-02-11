// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionDefinition _$DestinyProgressionDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyProgressionDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyProgressionDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..scope = decodeDestinyProgressionScope(json['scope'])
      ..repeatLastStep = json['repeatLastStep'] as bool?
      ..source = json['source'] as String?
      ..steps = (json['steps'] as List<dynamic>?)
          ?.map((e) => DestinyProgressionStepDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..visible = json['visible'] as bool?
      ..factionHash = json['factionHash'] as int?
      ..color = json['color'] == null
          ? null
          : DestinyColor.fromJson(json['color'] as Map<String, dynamic>)
      ..rankIcon = json['rankIcon'] as String?
      ..rewardItems = (json['rewardItems'] as List<dynamic>?)
          ?.map((e) => DestinyProgressionRewardItemQuantity.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyProgressionDefinitionToJson(
        DestinyProgressionDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'scope': encodeDestinyProgressionScope(instance.scope),
      'repeatLastStep': instance.repeatLastStep,
      'source': instance.source,
      'steps': instance.steps?.map((e) => e.toJson()).toList(),
      'visible': instance.visible,
      'factionHash': instance.factionHash,
      'color': instance.color?.toJson(),
      'rankIcon': instance.rankIcon,
      'rewardItems': instance.rewardItems?.map((e) => e.toJson()).toList(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
