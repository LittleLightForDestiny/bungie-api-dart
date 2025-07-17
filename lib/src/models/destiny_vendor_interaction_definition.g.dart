// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_interaction_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorInteractionDefinition _$DestinyVendorInteractionDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyVendorInteractionDefinition()
      ..interactionIndex = (json['interactionIndex'] as num?)?.toInt()
      ..replies = (json['replies'] as List<dynamic>?)
          ?.map((e) => DestinyVendorInteractionReplyDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..vendorCategoryIndex = (json['vendorCategoryIndex'] as num?)?.toInt()
      ..questlineItemHash = (json['questlineItemHash'] as num?)?.toInt()
      ..sackInteractionList = (json['sackInteractionList'] as List<dynamic>?)
          ?.map((e) => DestinyVendorInteractionSackEntryDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..uiInteractionType = (json['uiInteractionType'] as num?)?.toInt()
      ..interactionType = decodeVendorInteractionType(json['interactionType'])
      ..rewardBlockLabel = json['rewardBlockLabel'] as String?
      ..rewardVendorCategoryIndex =
          (json['rewardVendorCategoryIndex'] as num?)?.toInt()
      ..flavorLineOne = json['flavorLineOne'] as String?
      ..flavorLineTwo = json['flavorLineTwo'] as String?
      ..headerDisplayProperties = json['headerDisplayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['headerDisplayProperties'] as Map<String, dynamic>)
      ..instructions = json['instructions'] as String?;

Map<String, dynamic> _$DestinyVendorInteractionDefinitionToJson(
        DestinyVendorInteractionDefinition instance) =>
    <String, dynamic>{
      'interactionIndex': instance.interactionIndex,
      'replies': instance.replies?.map((e) => e.toJson()).toList(),
      'vendorCategoryIndex': instance.vendorCategoryIndex,
      'questlineItemHash': instance.questlineItemHash,
      'sackInteractionList':
          instance.sackInteractionList?.map((e) => e.toJson()).toList(),
      'uiInteractionType': instance.uiInteractionType,
      'interactionType': encodeVendorInteractionType(instance.interactionType),
      'rewardBlockLabel': instance.rewardBlockLabel,
      'rewardVendorCategoryIndex': instance.rewardVendorCategoryIndex,
      'flavorLineOne': instance.flavorLineOne,
      'flavorLineTwo': instance.flavorLineTwo,
      'headerDisplayProperties': instance.headerDisplayProperties?.toJson(),
      'instructions': instance.instructions,
    };
