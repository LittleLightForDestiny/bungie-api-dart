// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_crafting_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemCraftingBlockDefinition _$DestinyItemCraftingBlockDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemCraftingBlockDefinition()
      ..outputItemHash = (json['outputItemHash'] as num?)?.toInt()
      ..requiredSocketTypeHashes =
          (json['requiredSocketTypeHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..failedRequirementStrings =
          (json['failedRequirementStrings'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList()
      ..baseMaterialRequirements =
          (json['baseMaterialRequirements'] as num?)?.toInt()
      ..bonusPlugs =
          (json['bonusPlugs'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemCraftingBlockBonusPlugDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyItemCraftingBlockDefinitionToJson(
  DestinyItemCraftingBlockDefinition instance,
) => <String, dynamic>{
  'outputItemHash': instance.outputItemHash,
  'requiredSocketTypeHashes': instance.requiredSocketTypeHashes,
  'failedRequirementStrings': instance.failedRequirementStrings,
  'baseMaterialRequirements': instance.baseMaterialRequirements,
  'bonusPlugs': instance.bonusPlugs?.map((e) => e.toJson()).toList(),
};
