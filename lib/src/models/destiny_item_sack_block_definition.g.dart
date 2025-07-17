// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_sack_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSackBlockDefinition _$DestinyItemSackBlockDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemSackBlockDefinition()
      ..detailAction = json['detailAction'] as String?
      ..openAction = json['openAction'] as String?
      ..selectItemCount = (json['selectItemCount'] as num?)?.toInt()
      ..vendorSackType = json['vendorSackType'] as String?
      ..openOnAcquire = json['openOnAcquire'] as bool?;

Map<String, dynamic> _$DestinyItemSackBlockDefinitionToJson(
        DestinyItemSackBlockDefinition instance) =>
    <String, dynamic>{
      'detailAction': instance.detailAction,
      'openAction': instance.openAction,
      'selectItemCount': instance.selectItemCount,
      'vendorSackType': instance.vendorSackType,
      'openOnAcquire': instance.openOnAcquire,
    };
