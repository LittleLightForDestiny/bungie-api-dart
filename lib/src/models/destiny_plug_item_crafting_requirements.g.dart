// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_plug_item_crafting_requirements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPlugItemCraftingRequirements
_$DestinyPlugItemCraftingRequirementsFromJson(Map<String, dynamic> json) =>
    DestinyPlugItemCraftingRequirements()
      ..unlockRequirements =
          (json['unlockRequirements'] as List<dynamic>?)
              ?.map(
                (e) => DestinyPlugItemCraftingUnlockRequirement.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..requiredLevel = (json['requiredLevel'] as num?)?.toInt()
      ..materialRequirementHashes =
          (json['materialRequirementHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$DestinyPlugItemCraftingRequirementsToJson(
  DestinyPlugItemCraftingRequirements instance,
) => <String, dynamic>{
  'unlockRequirements':
      instance.unlockRequirements?.map((e) => e.toJson()).toList(),
  'requiredLevel': instance.requiredLevel,
  'materialRequirementHashes': instance.materialRequirementHashes,
};
