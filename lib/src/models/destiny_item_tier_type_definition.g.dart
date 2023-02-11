// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_tier_type_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemTierTypeDefinition _$DestinyItemTierTypeDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemTierTypeDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..infusionProcess = json['infusionProcess'] == null
          ? null
          : DestinyItemTierTypeInfusionBlock.fromJson(
              json['infusionProcess'] as Map<String, dynamic>)
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyItemTierTypeDefinitionToJson(
        DestinyItemTierTypeDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'infusionProcess': instance.infusionProcess?.toJson(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
