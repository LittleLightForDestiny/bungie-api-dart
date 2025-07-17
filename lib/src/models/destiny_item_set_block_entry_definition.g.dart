// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_set_block_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSetBlockEntryDefinition _$DestinyItemSetBlockEntryDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemSetBlockEntryDefinition()
      ..trackingValue = (json['trackingValue'] as num?)?.toInt()
      ..itemHash = (json['itemHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyItemSetBlockEntryDefinitionToJson(
        DestinyItemSetBlockEntryDefinition instance) =>
    <String, dynamic>{
      'trackingValue': instance.trackingValue,
      'itemHash': instance.itemHash,
    };
