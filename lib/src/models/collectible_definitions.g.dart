// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collectible_definitions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectibleDefinitions _$CollectibleDefinitionsFromJson(
        Map<String, dynamic> json) =>
    CollectibleDefinitions()
      ..collectibleDefinition = json['CollectibleDefinition'] == null
          ? null
          : DestinyCollectibleDefinition.fromJson(
              json['CollectibleDefinition'] as Map<String, dynamic>)
      ..destinyInventoryItemDefinition =
          json['DestinyInventoryItemDefinition'] == null
              ? null
              : DestinyInventoryItemDefinition.fromJson(
                  json['DestinyInventoryItemDefinition']
                      as Map<String, dynamic>);

Map<String, dynamic> _$CollectibleDefinitionsToJson(
        CollectibleDefinitions instance) =>
    <String, dynamic>{
      'CollectibleDefinition': instance.collectibleDefinition?.toJson(),
      'DestinyInventoryItemDefinition':
          instance.destinyInventoryItemDefinition?.toJson(),
    };
