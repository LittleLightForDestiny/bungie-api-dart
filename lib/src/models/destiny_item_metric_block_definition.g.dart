// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_metric_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemMetricBlockDefinition _$DestinyItemMetricBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemMetricBlockDefinition()
    ..availableMetricCategoryNodeHashes =
        (json['availableMetricCategoryNodeHashes'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList();
}

Map<String, dynamic> _$DestinyItemMetricBlockDefinitionToJson(
        DestinyItemMetricBlockDefinition instance) =>
    <String, dynamic>{
      'availableMetricCategoryNodeHashes':
          instance.availableMetricCategoryNodeHashes,
    };
