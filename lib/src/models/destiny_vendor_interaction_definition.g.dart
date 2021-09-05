// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_interaction_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorInteractionDefinition _$DestinyVendorInteractionDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyVendorInteractionDefinition()
    ..interactionIndex = json['interactionIndex'] as int?
    ..replies = (json['replies'] as List<dynamic>?)
        ?.map((e) => DestinyVendorInteractionReplyDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..vendorCategoryIndex = json['vendorCategoryIndex'] as int?
    ..questlineItemHash = json['questlineItemHash'] as int?
    ..sackInteractionList = (json['sackInteractionList'] as List<dynamic>?)
        ?.map((e) => DestinyVendorInteractionSackEntryDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..uiInteractionType = json['uiInteractionType'] as int?
    ..interactionType = _$enumDecodeNullable(
        _$VendorInteractionTypeEnumMap, json['interactionType'],
        unknownValue: VendorInteractionType.ProtectedInvalidEnumValue)
    ..rewardBlockLabel = json['rewardBlockLabel'] as String?
    ..rewardVendorCategoryIndex = json['rewardVendorCategoryIndex'] as int?
    ..flavorLineOne = json['flavorLineOne'] as String?
    ..flavorLineTwo = json['flavorLineTwo'] as String?
    ..headerDisplayProperties = json['headerDisplayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['headerDisplayProperties'] as Map<String, dynamic>)
    ..instructions = json['instructions'] as String?;
}

Map<String, dynamic> _$DestinyVendorInteractionDefinitionToJson(
        DestinyVendorInteractionDefinition instance) =>
    <String, dynamic>{
      'interactionIndex': instance.interactionIndex,
      'replies': instance.replies,
      'vendorCategoryIndex': instance.vendorCategoryIndex,
      'questlineItemHash': instance.questlineItemHash,
      'sackInteractionList': instance.sackInteractionList,
      'uiInteractionType': instance.uiInteractionType,
      'interactionType':
          _$VendorInteractionTypeEnumMap[instance.interactionType],
      'rewardBlockLabel': instance.rewardBlockLabel,
      'rewardVendorCategoryIndex': instance.rewardVendorCategoryIndex,
      'flavorLineOne': instance.flavorLineOne,
      'flavorLineTwo': instance.flavorLineTwo,
      'headerDisplayProperties': instance.headerDisplayProperties,
      'instructions': instance.instructions,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$VendorInteractionTypeEnumMap = {
  VendorInteractionType.Unknown: 0,
  VendorInteractionType.Undefined: 1,
  VendorInteractionType.QuestComplete: 2,
  VendorInteractionType.QuestContinue: 3,
  VendorInteractionType.ReputationPreview: 4,
  VendorInteractionType.RankUpReward: 5,
  VendorInteractionType.TokenTurnIn: 6,
  VendorInteractionType.QuestAccept: 7,
  VendorInteractionType.ProgressTab: 8,
  VendorInteractionType.End: 9,
  VendorInteractionType.Start: 10,
  VendorInteractionType.ProtectedInvalidEnumValue: 999999999,
};
