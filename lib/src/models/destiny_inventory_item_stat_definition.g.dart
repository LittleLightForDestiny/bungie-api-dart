// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_inventory_item_stat_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInventoryItemStatDefinition _$DestinyInventoryItemStatDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyInventoryItemStatDefinition()
      ..statHash = (json['statHash'] as num?)?.toInt()
      ..value = (json['value'] as num?)?.toInt()
      ..minimum = (json['minimum'] as num?)?.toInt()
      ..maximum = (json['maximum'] as num?)?.toInt()
      ..displayMaximum = (json['displayMaximum'] as num?)?.toInt();

Map<String, dynamic> _$DestinyInventoryItemStatDefinitionToJson(
        DestinyInventoryItemStatDefinition instance) =>
    <String, dynamic>{
      'statHash': instance.statHash,
      'value': instance.value,
      'minimum': instance.minimum,
      'maximum': instance.maximum,
      'displayMaximum': instance.displayMaximum,
    };
