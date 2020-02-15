// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_inventory_item_stat_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInventoryItemStatDefinition _$DestinyInventoryItemStatDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyInventoryItemStatDefinition()
    ..statHash = json['statHash'] as int
    ..value = json['value'] as int
    ..minimum = json['minimum'] as int
    ..maximum = json['maximum'] as int
    ..displayMaximum = json['displayMaximum'] as int;
}

Map<String, dynamic> _$DestinyInventoryItemStatDefinitionToJson(
        DestinyInventoryItemStatDefinition instance) =>
    <String, dynamic>{
      'statHash': instance.statHash,
      'value': instance.value,
      'minimum': instance.minimum,
      'maximum': instance.maximum,
      'displayMaximum': instance.displayMaximum,
    };
