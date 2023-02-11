// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_stat_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemStatBlockDefinition _$DestinyItemStatBlockDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemStatBlockDefinition()
      ..disablePrimaryStatDisplay = json['disablePrimaryStatDisplay'] as bool?
      ..statGroupHash = json['statGroupHash'] as int?
      ..stats = (json['stats'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            DestinyInventoryItemStatDefinition.fromJson(
                e as Map<String, dynamic>)),
      )
      ..hasDisplayableStats = json['hasDisplayableStats'] as bool?
      ..primaryBaseStatHash = json['primaryBaseStatHash'] as int?;

Map<String, dynamic> _$DestinyItemStatBlockDefinitionToJson(
        DestinyItemStatBlockDefinition instance) =>
    <String, dynamic>{
      'disablePrimaryStatDisplay': instance.disablePrimaryStatDisplay,
      'statGroupHash': instance.statGroupHash,
      'stats': instance.stats?.map((k, e) => MapEntry(k, e.toJson())),
      'hasDisplayableStats': instance.hasDisplayableStats,
      'primaryBaseStatHash': instance.primaryBaseStatHash,
    };
