// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_inventory_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInventoryItemDefinition _$DestinyInventoryItemDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyInventoryItemDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..tooltipNotifications = (json['tooltipNotifications'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemTooltipNotification.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..collectibleHash = json['collectibleHash'] as int
    ..secondaryIcon = json['secondaryIcon'] as String
    ..secondaryOverlay = json['secondaryOverlay'] as String
    ..secondarySpecial = json['secondarySpecial'] as String
    ..backgroundColor = json['backgroundColor'] == null
        ? null
        : DestinyColor.fromJson(json['backgroundColor'] as Map<String, dynamic>)
    ..screenshot = json['screenshot'] as String
    ..itemTypeDisplayName = json['itemTypeDisplayName'] as String
    ..uiItemDisplayStyle = json['uiItemDisplayStyle'] as String
    ..itemTypeAndTierDisplayName = json['itemTypeAndTierDisplayName'] as String
    ..displaySource = json['displaySource'] as String
    ..tooltipStyle = json['tooltipStyle'] as String
    ..action = json['action'] == null
        ? null
        : DestinyItemActionBlockDefinition.fromJson(
            json['action'] as Map<String, dynamic>)
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
    ..emblemObjectiveHash = json['emblemObjectiveHash'] as int
    ..equippingBlock = json['equippingBlock'] == null
        ? null
        : DestinyEquippingBlockDefinition.fromJson(json['equippingBlock'] as Map<String, dynamic>)
    ..translationBlock = json['translationBlock'] == null ? null : DestinyItemTranslationBlockDefinition.fromJson(json['translationBlock'] as Map<String, dynamic>)
    ..preview = json['preview'] == null ? null : DestinyItemPreviewBlockDefinition.fromJson(json['preview'] as Map<String, dynamic>)
    ..quality = json['quality'] == null ? null : DestinyItemQualityBlockDefinition.fromJson(json['quality'] as Map<String, dynamic>)
    ..value = json['value'] == null ? null : DestinyItemValueBlockDefinition.fromJson(json['value'] as Map<String, dynamic>)
    ..sourceData = json['sourceData'] == null ? null : DestinyItemSourceBlockDefinition.fromJson(json['sourceData'] as Map<String, dynamic>)
    ..objectives = json['objectives'] == null ? null : DestinyItemObjectiveBlockDefinition.fromJson(json['objectives'] as Map<String, dynamic>)
    ..plug = json['plug'] == null ? null : DestinyItemPlugDefinition.fromJson(json['plug'] as Map<String, dynamic>)
    ..gearset = json['gearset'] == null ? null : DestinyItemGearsetBlockDefinition.fromJson(json['gearset'] as Map<String, dynamic>)
    ..sack = json['sack'] == null ? null : DestinyItemSackBlockDefinition.fromJson(json['sack'] as Map<String, dynamic>)
    ..sockets = json['sockets'] == null ? null : DestinyItemSocketBlockDefinition.fromJson(json['sockets'] as Map<String, dynamic>)
    ..summary = json['summary'] == null ? null : DestinyItemSummaryBlockDefinition.fromJson(json['summary'] as Map<String, dynamic>)
    ..talentGrid = json['talentGrid'] == null ? null : DestinyItemTalentGridBlockDefinition.fromJson(json['talentGrid'] as Map<String, dynamic>)
    ..investmentStats = (json['investmentStats'] as List)?.map((e) => e == null ? null : DestinyItemInvestmentStatDefinition.fromJson(e as Map<String, dynamic>))?.toList()
    ..perks = (json['perks'] as List)?.map((e) => e == null ? null : DestinyItemPerkEntryDefinition.fromJson(e as Map<String, dynamic>))?.toList()
    ..loreHash = json['loreHash'] as int
    ..summaryItemHash = json['summaryItemHash'] as int
    ..animations = (json['animations'] as List)?.map((e) => e == null ? null : DestinyAnimationReference.fromJson(e as Map<String, dynamic>))?.toList()
    ..allowActions = json['allowActions'] as bool
    ..links = (json['links'] as List)?.map((e) => e == null ? null : HyperlinkReference.fromJson(e as Map<String, dynamic>))?.toList()
    ..doesPostmasterPullHaveSideEffects = json['doesPostmasterPullHaveSideEffects'] as bool
    ..nonTransferrable = json['nonTransferrable'] as bool
    ..itemCategoryHashes = (json['itemCategoryHashes'] as List)?.map((e) => e as int)?.toList()
    ..specialItemType = _$enumDecodeNullable(_$SpecialItemTypeEnumMap, json['specialItemType'], unknownValue: SpecialItemType.ProtectedInvalidEnumValue)
    ..itemType = _$enumDecodeNullable(_$DestinyItemTypeEnumMap, json['itemType'], unknownValue: DestinyItemType.ProtectedInvalidEnumValue)
    ..itemSubType = _$enumDecodeNullable(_$DestinyItemSubTypeEnumMap, json['itemSubType'], unknownValue: DestinyItemSubType.ProtectedInvalidEnumValue)
    ..classType = _$enumDecodeNullable(_$DestinyClassEnumMap, json['classType'], unknownValue: DestinyClass.ProtectedInvalidEnumValue)
    ..breakerType = _$enumDecodeNullable(_$DestinyBreakerTypeEnumMap, json['breakerType'], unknownValue: DestinyBreakerType.ProtectedInvalidEnumValue)
    ..breakerTypeHash = json['breakerTypeHash'] as int
    ..equippable = json['equippable'] as bool
    ..damageTypeHashes = (json['damageTypeHashes'] as List)?.map((e) => e as int)?.toList()
    ..damageTypes = (json['damageTypes'] as List)?.map((e) => _$enumDecodeNullable(_$DamageTypeEnumMap, e))?.toList()
    ..defaultDamageType = _$enumDecodeNullable(_$DamageTypeEnumMap, json['defaultDamageType'], unknownValue: DamageType.ProtectedInvalidEnumValue)
    ..defaultDamageTypeHash = json['defaultDamageTypeHash'] as int
    ..seasonHash = json['seasonHash'] as int
    ..isWrapper = json['isWrapper'] as bool
    ..traitIds = (json['traitIds'] as List)?.map((e) => e as String)?.toList()
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyInventoryItemDefinitionToJson(
        DestinyInventoryItemDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'tooltipNotifications': instance.tooltipNotifications,
      'collectibleHash': instance.collectibleHash,
      'secondaryIcon': instance.secondaryIcon,
      'secondaryOverlay': instance.secondaryOverlay,
      'secondarySpecial': instance.secondarySpecial,
      'backgroundColor': instance.backgroundColor,
      'screenshot': instance.screenshot,
      'itemTypeDisplayName': instance.itemTypeDisplayName,
      'uiItemDisplayStyle': instance.uiItemDisplayStyle,
      'itemTypeAndTierDisplayName': instance.itemTypeAndTierDisplayName,
      'displaySource': instance.displaySource,
      'tooltipStyle': instance.tooltipStyle,
      'action': instance.action,
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
      'specialItemType': _$SpecialItemTypeEnumMap[instance.specialItemType],
      'itemType': _$DestinyItemTypeEnumMap[instance.itemType],
      'itemSubType': _$DestinyItemSubTypeEnumMap[instance.itemSubType],
      'classType': _$DestinyClassEnumMap[instance.classType],
      'breakerType': _$DestinyBreakerTypeEnumMap[instance.breakerType],
      'breakerTypeHash': instance.breakerTypeHash,
      'equippable': instance.equippable,
      'damageTypeHashes': instance.damageTypeHashes,
      'damageTypes':
          instance.damageTypes?.map((e) => _$DamageTypeEnumMap[e])?.toList(),
      'defaultDamageType': _$DamageTypeEnumMap[instance.defaultDamageType],
      'defaultDamageTypeHash': instance.defaultDamageTypeHash,
      'seasonHash': instance.seasonHash,
      'isWrapper': instance.isWrapper,
      'traitIds': instance.traitIds,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$SpecialItemTypeEnumMap = {
  SpecialItemType.None: 0,
  SpecialItemType.SpecialCurrency: 1,
  SpecialItemType.Armor: 8,
  SpecialItemType.Weapon: 9,
  SpecialItemType.Engram: 23,
  SpecialItemType.Consumable: 24,
  SpecialItemType.ExchangeMaterial: 25,
  SpecialItemType.MissionReward: 27,
  SpecialItemType.Currency: 29,
  SpecialItemType.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyItemTypeEnumMap = {
  DestinyItemType.None: 0,
  DestinyItemType.Currency: 1,
  DestinyItemType.Armor: 2,
  DestinyItemType.Weapon: 3,
  DestinyItemType.Message: 7,
  DestinyItemType.Engram: 8,
  DestinyItemType.Consumable: 9,
  DestinyItemType.ExchangeMaterial: 10,
  DestinyItemType.MissionReward: 11,
  DestinyItemType.QuestStep: 12,
  DestinyItemType.QuestStepComplete: 13,
  DestinyItemType.Emblem: 14,
  DestinyItemType.Quest: 15,
  DestinyItemType.Subclass: 16,
  DestinyItemType.ClanBanner: 17,
  DestinyItemType.Aura: 18,
  DestinyItemType.Mod: 19,
  DestinyItemType.Dummy: 20,
  DestinyItemType.Ship: 21,
  DestinyItemType.Vehicle: 22,
  DestinyItemType.Emote: 23,
  DestinyItemType.Ghost: 24,
  DestinyItemType.Package: 25,
  DestinyItemType.Bounty: 26,
  DestinyItemType.Wrapper: 27,
  DestinyItemType.SeasonalArtifact: 28,
  DestinyItemType.Finisher: 29,
  DestinyItemType.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyItemSubTypeEnumMap = {
  DestinyItemSubType.None: 0,
  DestinyItemSubType.Crucible: 1,
  DestinyItemSubType.Vanguard: 2,
  DestinyItemSubType.Exotic: 5,
  DestinyItemSubType.AutoRifle: 6,
  DestinyItemSubType.Shotgun: 7,
  DestinyItemSubType.Machinegun: 8,
  DestinyItemSubType.HandCannon: 9,
  DestinyItemSubType.RocketLauncher: 10,
  DestinyItemSubType.FusionRifle: 11,
  DestinyItemSubType.SniperRifle: 12,
  DestinyItemSubType.PulseRifle: 13,
  DestinyItemSubType.ScoutRifle: 14,
  DestinyItemSubType.Crm: 16,
  DestinyItemSubType.Sidearm: 17,
  DestinyItemSubType.Sword: 18,
  DestinyItemSubType.Mask: 19,
  DestinyItemSubType.Shader: 20,
  DestinyItemSubType.Ornament: 21,
  DestinyItemSubType.FusionRifleLine: 22,
  DestinyItemSubType.GrenadeLauncher: 23,
  DestinyItemSubType.SubmachineGun: 24,
  DestinyItemSubType.TraceRifle: 25,
  DestinyItemSubType.HelmetArmor: 26,
  DestinyItemSubType.GauntletsArmor: 27,
  DestinyItemSubType.ChestArmor: 28,
  DestinyItemSubType.LegArmor: 29,
  DestinyItemSubType.ClassArmor: 30,
  DestinyItemSubType.Bow: 31,
  DestinyItemSubType.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyClassEnumMap = {
  DestinyClass.Titan: 0,
  DestinyClass.Hunter: 1,
  DestinyClass.Warlock: 2,
  DestinyClass.Unknown: 3,
  DestinyClass.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyBreakerTypeEnumMap = {
  DestinyBreakerType.None: 0,
  DestinyBreakerType.ShieldPiercing: 1,
  DestinyBreakerType.Disruption: 2,
  DestinyBreakerType.Stagger: 3,
  DestinyBreakerType.ProtectedInvalidEnumValue: 999999999,
};

const _$DamageTypeEnumMap = {
  DamageType.None: 0,
  DamageType.Kinetic: 1,
  DamageType.Arc: 2,
  DamageType.Thermal: 3,
  DamageType.Void: 4,
  DamageType.Raid: 5,
  DamageType.ProtectedInvalidEnumValue: 999999999,
};
