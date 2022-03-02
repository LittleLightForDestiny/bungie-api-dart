// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_inventory_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInventoryItemDefinition _$DestinyInventoryItemDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyInventoryItemDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..tooltipNotifications = (json['tooltipNotifications'] as List<dynamic>?)
          ?.map((e) => DestinyItemTooltipNotification.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..collectibleHash = json['collectibleHash'] as int?
      ..iconWatermark = json['iconWatermark'] as String?
      ..iconWatermarkShelved = json['iconWatermarkShelved'] as String?
      ..secondaryIcon = json['secondaryIcon'] as String?
      ..secondaryOverlay = json['secondaryOverlay'] as String?
      ..secondarySpecial = json['secondarySpecial'] as String?
      ..backgroundColor = json['backgroundColor'] == null
          ? null
          : DestinyColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>)
      ..screenshot = json['screenshot'] as String?
      ..itemTypeDisplayName = json['itemTypeDisplayName'] as String?
      ..flavorText = json['flavorText'] as String?
      ..uiItemDisplayStyle = json['uiItemDisplayStyle'] as String?
      ..itemTypeAndTierDisplayName =
          json['itemTypeAndTierDisplayName'] as String?
      ..displaySource = json['displaySource'] as String?
      ..tooltipStyle = json['tooltipStyle'] as String?
      ..action = json['action'] == null
          ? null
          : DestinyItemActionBlockDefinition.fromJson(
              json['action'] as Map<String, dynamic>)
      ..crafting = json['crafting'] == null
          ? null
          : DestinyItemCraftingBlockDefinition.fromJson(
              json['crafting'] as Map<String, dynamic>)
      ..inventory = json['inventory'] == null
          ? null
          : DestinyItemInventoryBlockDefinition.fromJson(
              json['inventory'] as Map<String, dynamic>)
      ..setData = json['setData'] == null
          ? null
          : DestinyItemSetBlockDefinition.fromJson(
              json['setData'] as Map<String, dynamic>)
      ..stats = json['stats'] == null
          ? null
          : DestinyItemStatBlockDefinition.fromJson(
              json['stats'] as Map<String, dynamic>)
      ..emblemObjectiveHash = json['emblemObjectiveHash'] as int?
      ..equippingBlock = json['equippingBlock'] == null
          ? null
          : DestinyEquippingBlockDefinition.fromJson(
              json['equippingBlock'] as Map<String, dynamic>)
      ..translationBlock = json['translationBlock'] == null
          ? null
          : DestinyItemTranslationBlockDefinition.fromJson(
              json['translationBlock'] as Map<String, dynamic>)
      ..preview = json['preview'] == null
          ? null
          : DestinyItemPreviewBlockDefinition.fromJson(
              json['preview'] as Map<String, dynamic>)
      ..quality = json['quality'] == null
          ? null
          : DestinyItemQualityBlockDefinition.fromJson(
              json['quality'] as Map<String, dynamic>)
      ..value = json['value'] == null
          ? null
          : DestinyItemValueBlockDefinition.fromJson(
              json['value'] as Map<String, dynamic>)
      ..sourceData = json['sourceData'] == null
          ? null
          : DestinyItemSourceBlockDefinition.fromJson(
              json['sourceData'] as Map<String, dynamic>)
      ..objectives = json['objectives'] == null
          ? null
          : DestinyItemObjectiveBlockDefinition.fromJson(
              json['objectives'] as Map<String, dynamic>)
      ..metrics = json['metrics'] == null
          ? null
          : DestinyItemMetricBlockDefinition.fromJson(
              json['metrics'] as Map<String, dynamic>)
      ..plug = json['plug'] == null
          ? null
          : DestinyItemPlugDefinition.fromJson(
              json['plug'] as Map<String, dynamic>)
      ..gearset = json['gearset'] == null
          ? null
          : DestinyItemGearsetBlockDefinition.fromJson(
              json['gearset'] as Map<String, dynamic>)
      ..sack = json['sack'] == null
          ? null
          : DestinyItemSackBlockDefinition.fromJson(
              json['sack'] as Map<String, dynamic>)
      ..sockets = json['sockets'] == null
          ? null
          : DestinyItemSocketBlockDefinition.fromJson(
              json['sockets'] as Map<String, dynamic>)
      ..summary = json['summary'] == null
          ? null
          : DestinyItemSummaryBlockDefinition.fromJson(
              json['summary'] as Map<String, dynamic>)
      ..talentGrid = json['talentGrid'] == null
          ? null
          : DestinyItemTalentGridBlockDefinition.fromJson(
              json['talentGrid'] as Map<String, dynamic>)
      ..investmentStats = (json['investmentStats'] as List<dynamic>?)
          ?.map((e) => DestinyItemInvestmentStatDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..perks = (json['perks'] as List<dynamic>?)
          ?.map((e) => DestinyItemPerkEntryDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..loreHash = json['loreHash'] as int?
      ..summaryItemHash = json['summaryItemHash'] as int?
      ..animations = (json['animations'] as List<dynamic>?)
          ?.map((e) =>
              DestinyAnimationReference.fromJson(e as Map<String, dynamic>))
          .toList()
      ..allowActions = json['allowActions'] as bool?
      ..links = (json['links'] as List<dynamic>?)
          ?.map((e) => HyperlinkReference.fromJson(e as Map<String, dynamic>))
          .toList()
      ..doesPostmasterPullHaveSideEffects =
          json['doesPostmasterPullHaveSideEffects'] as bool?
      ..nonTransferrable = json['nonTransferrable'] as bool?
      ..itemCategoryHashes = (json['itemCategoryHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..specialItemType = decodeSpecialItemType(json['specialItemType'])
      ..itemType = decodeDestinyItemType(json['itemType'])
      ..itemSubType = decodeDestinyItemSubType(json['itemSubType'])
      ..classType = decodeDestinyClass(json['classType'])
      ..breakerType = decodeDestinyBreakerType(json['breakerType'])
      ..breakerTypeHash = json['breakerTypeHash'] as int?
      ..equippable = json['equippable'] as bool?
      ..damageTypeHashes = (json['damageTypeHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..damageTypes = (json['damageTypes'] as List<dynamic>?)
          ?.map((e) => _$enumDecode(_$DamageTypeEnumMap, e))
          .toList()
      ..defaultDamageType = decodeDamageType(json['defaultDamageType'])
      ..defaultDamageTypeHash = json['defaultDamageTypeHash'] as int?
      ..seasonHash = json['seasonHash'] as int?
      ..isWrapper = json['isWrapper'] as bool?
      ..traitIds =
          (json['traitIds'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..traitHashes =
          (json['traitHashes'] as List<dynamic>?)?.map((e) => e as int).toList()
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyInventoryItemDefinitionToJson(
        DestinyInventoryItemDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'tooltipNotifications': instance.tooltipNotifications,
      'collectibleHash': instance.collectibleHash,
      'iconWatermark': instance.iconWatermark,
      'iconWatermarkShelved': instance.iconWatermarkShelved,
      'secondaryIcon': instance.secondaryIcon,
      'secondaryOverlay': instance.secondaryOverlay,
      'secondarySpecial': instance.secondarySpecial,
      'backgroundColor': instance.backgroundColor,
      'screenshot': instance.screenshot,
      'itemTypeDisplayName': instance.itemTypeDisplayName,
      'flavorText': instance.flavorText,
      'uiItemDisplayStyle': instance.uiItemDisplayStyle,
      'itemTypeAndTierDisplayName': instance.itemTypeAndTierDisplayName,
      'displaySource': instance.displaySource,
      'tooltipStyle': instance.tooltipStyle,
      'action': instance.action,
      'crafting': instance.crafting,
      'inventory': instance.inventory,
      'setData': instance.setData,
      'stats': instance.stats,
      'emblemObjectiveHash': instance.emblemObjectiveHash,
      'equippingBlock': instance.equippingBlock,
      'translationBlock': instance.translationBlock,
      'preview': instance.preview,
      'quality': instance.quality,
      'value': instance.value,
      'sourceData': instance.sourceData,
      'objectives': instance.objectives,
      'metrics': instance.metrics,
      'plug': instance.plug,
      'gearset': instance.gearset,
      'sack': instance.sack,
      'sockets': instance.sockets,
      'summary': instance.summary,
      'talentGrid': instance.talentGrid,
      'investmentStats': instance.investmentStats,
      'perks': instance.perks,
      'loreHash': instance.loreHash,
      'summaryItemHash': instance.summaryItemHash,
      'animations': instance.animations,
      'allowActions': instance.allowActions,
      'links': instance.links,
      'doesPostmasterPullHaveSideEffects':
          instance.doesPostmasterPullHaveSideEffects,
      'nonTransferrable': instance.nonTransferrable,
      'itemCategoryHashes': instance.itemCategoryHashes,
      'specialItemType': encodeSpecialItemType(instance.specialItemType),
      'itemType': encodeDestinyItemType(instance.itemType),
      'itemSubType': encodeDestinyItemSubType(instance.itemSubType),
      'classType': encodeDestinyClass(instance.classType),
      'breakerType': encodeDestinyBreakerType(instance.breakerType),
      'breakerTypeHash': instance.breakerTypeHash,
      'equippable': instance.equippable,
      'damageTypeHashes': instance.damageTypeHashes,
      'damageTypes':
          instance.damageTypes?.map((e) => _$DamageTypeEnumMap[e]).toList(),
      'defaultDamageType': encodeDamageType(instance.defaultDamageType),
      'defaultDamageTypeHash': instance.defaultDamageTypeHash,
      'seasonHash': instance.seasonHash,
      'isWrapper': instance.isWrapper,
      'traitIds': instance.traitIds,
      'traitHashes': instance.traitHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
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

const _$DamageTypeEnumMap = {
  DamageType.None: 0,
  DamageType.Kinetic: 1,
  DamageType.Arc: 2,
  DamageType.Thermal: 3,
  DamageType.Void: 4,
  DamageType.Raid: 5,
  DamageType.Stasis: 6,
  DamageType.ProtectedInvalidEnumValue: 999999999,
};
