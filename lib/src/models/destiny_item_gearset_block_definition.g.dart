// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_gearset_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemGearsetBlockDefinition _$DestinyItemGearsetBlockDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemGearsetBlockDefinition()
      ..trackingValueMax = json['trackingValueMax'] as int?
      ..itemList =
          (json['itemList'] as List<dynamic>?)?.map((e) => e as int).toList();

Map<String, dynamic> _$DestinyItemGearsetBlockDefinitionToJson(
        DestinyItemGearsetBlockDefinition instance) =>
    <String, dynamic>{
      'trackingValueMax': instance.trackingValueMax,
      'itemList': instance.itemList,
    };
