// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_tier_type_infusion_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemTierTypeInfusionBlock _$DestinyItemTierTypeInfusionBlockFromJson(
    Map<String, dynamic> json) {
  return DestinyItemTierTypeInfusionBlock()
    ..baseQualityTransferRatio =
        (json['baseQualityTransferRatio'] as num?)?.toDouble()
    ..minimumQualityIncrement = json['minimumQualityIncrement'] as int?;
}

Map<String, dynamic> _$DestinyItemTierTypeInfusionBlockToJson(
        DestinyItemTierTypeInfusionBlock instance) =>
    <String, dynamic>{
      'baseQualityTransferRatio': instance.baseQualityTransferRatio,
      'minimumQualityIncrement': instance.minimumQualityIncrement,
    };
