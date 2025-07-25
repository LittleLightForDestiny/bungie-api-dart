// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_inventory_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInventoryItemDefinition _$DestinyInventoryItemDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyInventoryItemDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..tooltipNotifications =
          (json['tooltipNotifications'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemTooltipNotification.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..collectibleHash = (json['collectibleHash'] as num?)?.toInt()
      ..iconWatermark = json['iconWatermark'] as String?
      ..iconWatermarkShelved = json['iconWatermarkShelved'] as String?
      ..iconWatermarkFeatured = json['iconWatermarkFeatured'] as String?
      ..secondaryIcon = json['secondaryIcon'] as String?
      ..secondaryOverlay = json['secondaryOverlay'] as String?
      ..secondarySpecial = json['secondarySpecial'] as String?
      ..backgroundColor =
          json['backgroundColor'] == null
              ? null
              : DestinyColor.fromJson(
                json['backgroundColor'] as Map<String, dynamic>,
              )
      ..isFeaturedItem = json['isFeaturedItem'] as bool?
      ..screenshot = json['screenshot'] as String?
      ..itemTypeDisplayName = json['itemTypeDisplayName'] as String?
      ..flavorText = json['flavorText'] as String?
      ..uiItemDisplayStyle = json['uiItemDisplayStyle'] as String?
      ..itemTypeAndTierDisplayName =
          json['itemTypeAndTierDisplayName'] as String?
      ..displaySource = json['displaySource'] as String?
      ..tooltipStyle = json['tooltipStyle'] as String?
      ..action =
          json['action'] == null
              ? null
              : DestinyItemActionBlockDefinition.fromJson(
                json['action'] as Map<String, dynamic>,
              )
      ..crafting =
          json['crafting'] == null
              ? null
              : DestinyItemCraftingBlockDefinition.fromJson(
                json['crafting'] as Map<String, dynamic>,
              )
      ..inventory =
          json['inventory'] == null
              ? null
              : DestinyItemInventoryBlockDefinition.fromJson(
                json['inventory'] as Map<String, dynamic>,
              )
      ..setData =
          json['setData'] == null
              ? null
              : DestinyItemSetBlockDefinition.fromJson(
                json['setData'] as Map<String, dynamic>,
              )
      ..stats =
          json['stats'] == null
              ? null
              : DestinyItemStatBlockDefinition.fromJson(
                json['stats'] as Map<String, dynamic>,
              )
      ..emblemObjectiveHash = (json['emblemObjectiveHash'] as num?)?.toInt()
      ..equippingBlock =
          json['equippingBlock'] == null
              ? null
              : DestinyEquippingBlockDefinition.fromJson(
                json['equippingBlock'] as Map<String, dynamic>,
              )
      ..translationBlock =
          json['translationBlock'] == null
              ? null
              : DestinyItemTranslationBlockDefinition.fromJson(
                json['translationBlock'] as Map<String, dynamic>,
              )
      ..preview =
          json['preview'] == null
              ? null
              : DestinyItemPreviewBlockDefinition.fromJson(
                json['preview'] as Map<String, dynamic>,
              )
      ..quality =
          json['quality'] == null
              ? null
              : DestinyItemQualityBlockDefinition.fromJson(
                json['quality'] as Map<String, dynamic>,
              )
      ..value =
          json['value'] == null
              ? null
              : DestinyItemValueBlockDefinition.fromJson(
                json['value'] as Map<String, dynamic>,
              )
      ..sourceData =
          json['sourceData'] == null
              ? null
              : DestinyItemSourceBlockDefinition.fromJson(
                json['sourceData'] as Map<String, dynamic>,
              )
      ..objectives =
          json['objectives'] == null
              ? null
              : DestinyItemObjectiveBlockDefinition.fromJson(
                json['objectives'] as Map<String, dynamic>,
              )
      ..metrics =
          json['metrics'] == null
              ? null
              : DestinyItemMetricBlockDefinition.fromJson(
                json['metrics'] as Map<String, dynamic>,
              )
      ..plug =
          json['plug'] == null
              ? null
              : DestinyItemPlugDefinition.fromJson(
                json['plug'] as Map<String, dynamic>,
              )
      ..gearset =
          json['gearset'] == null
              ? null
              : DestinyItemGearsetBlockDefinition.fromJson(
                json['gearset'] as Map<String, dynamic>,
              )
      ..sack =
          json['sack'] == null
              ? null
              : DestinyItemSackBlockDefinition.fromJson(
                json['sack'] as Map<String, dynamic>,
              )
      ..sockets =
          json['sockets'] == null
              ? null
              : DestinyItemSocketBlockDefinition.fromJson(
                json['sockets'] as Map<String, dynamic>,
              )
      ..summary =
          json['summary'] == null
              ? null
              : DestinyItemSummaryBlockDefinition.fromJson(
                json['summary'] as Map<String, dynamic>,
              )
      ..talentGrid =
          json['talentGrid'] == null
              ? null
              : DestinyItemTalentGridBlockDefinition.fromJson(
                json['talentGrid'] as Map<String, dynamic>,
              )
      ..investmentStats =
          (json['investmentStats'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemInvestmentStatDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..perks =
          (json['perks'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemPerkEntryDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..loreHash = (json['loreHash'] as num?)?.toInt()
      ..summaryItemHash = (json['summaryItemHash'] as num?)?.toInt()
      ..animations =
          (json['animations'] as List<dynamic>?)
              ?.map(
                (e) => DestinyAnimationReference.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..allowActions = json['allowActions'] as bool?
      ..links =
          (json['links'] as List<dynamic>?)
              ?.map(
                (e) => HyperlinkReference.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..doesPostmasterPullHaveSideEffects =
          json['doesPostmasterPullHaveSideEffects'] as bool?
      ..nonTransferrable = json['nonTransferrable'] as bool?
      ..itemCategoryHashes =
          (json['itemCategoryHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..specialItemType = decodeSpecialItemType(json['specialItemType'])
      ..itemType = decodeDestinyItemType(json['itemType'])
      ..itemSubType = decodeDestinyItemSubType(json['itemSubType'])
      ..classType = decodeDestinyClass(json['classType'])
      ..breakerType = decodeDestinyBreakerType(json['breakerType'])
      ..breakerTypeHash = (json['breakerTypeHash'] as num?)?.toInt()
      ..equippable = json['equippable'] as bool?
      ..damageTypeHashes =
          (json['damageTypeHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..damageTypes =
          (json['damageTypes'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DamageTypeEnumMap, e))
              .toList()
      ..defaultDamageType = decodeDamageType(json['defaultDamageType'])
      ..defaultDamageTypeHash = (json['defaultDamageTypeHash'] as num?)?.toInt()
      ..seasonHash = (json['seasonHash'] as num?)?.toInt()
      ..isWrapper = json['isWrapper'] as bool?
      ..traitIds =
          (json['traitIds'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..traitHashes =
          (json['traitHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyInventoryItemDefinitionToJson(
  DestinyInventoryItemDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'tooltipNotifications':
      instance.tooltipNotifications?.map((e) => e.toJson()).toList(),
  'collectibleHash': instance.collectibleHash,
  'iconWatermark': instance.iconWatermark,
  'iconWatermarkShelved': instance.iconWatermarkShelved,
  'iconWatermarkFeatured': instance.iconWatermarkFeatured,
  'secondaryIcon': instance.secondaryIcon,
  'secondaryOverlay': instance.secondaryOverlay,
  'secondarySpecial': instance.secondarySpecial,
  'backgroundColor': instance.backgroundColor?.toJson(),
  'isFeaturedItem': instance.isFeaturedItem,
  'screenshot': instance.screenshot,
  'itemTypeDisplayName': instance.itemTypeDisplayName,
  'flavorText': instance.flavorText,
  'uiItemDisplayStyle': instance.uiItemDisplayStyle,
  'itemTypeAndTierDisplayName': instance.itemTypeAndTierDisplayName,
  'displaySource': instance.displaySource,
  'tooltipStyle': instance.tooltipStyle,
  'action': instance.action?.toJson(),
  'crafting': instance.crafting?.toJson(),
  'inventory': instance.inventory?.toJson(),
  'setData': instance.setData?.toJson(),
  'stats': instance.stats?.toJson(),
  'emblemObjectiveHash': instance.emblemObjectiveHash,
  'equippingBlock': instance.equippingBlock?.toJson(),
  'translationBlock': instance.translationBlock?.toJson(),
  'preview': instance.preview?.toJson(),
  'quality': instance.quality?.toJson(),
  'value': instance.value?.toJson(),
  'sourceData': instance.sourceData?.toJson(),
  'objectives': instance.objectives?.toJson(),
  'metrics': instance.metrics?.toJson(),
  'plug': instance.plug?.toJson(),
  'gearset': instance.gearset?.toJson(),
  'sack': instance.sack?.toJson(),
  'sockets': instance.sockets?.toJson(),
  'summary': instance.summary?.toJson(),
  'talentGrid': instance.talentGrid?.toJson(),
  'investmentStats': instance.investmentStats?.map((e) => e.toJson()).toList(),
  'perks': instance.perks?.map((e) => e.toJson()).toList(),
  'loreHash': instance.loreHash,
  'summaryItemHash': instance.summaryItemHash,
  'animations': instance.animations?.map((e) => e.toJson()).toList(),
  'allowActions': instance.allowActions,
  'links': instance.links?.map((e) => e.toJson()).toList(),
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
      instance.damageTypes?.map((e) => _$DamageTypeEnumMap[e]!).toList(),
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

const _$DamageTypeEnumMap = {
  DamageType.None: 0,
  DamageType.Kinetic: 1,
  DamageType.Arc: 2,
  DamageType.Thermal: 3,
  DamageType.Void: 4,
  DamageType.Raid: 5,
  DamageType.Stasis: 6,
  DamageType.Strand: 7,
  DamageType.ProtectedInvalidEnumValue: 999999999,
};
