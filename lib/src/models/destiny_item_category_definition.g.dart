// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemCategoryDefinition _$DestinyItemCategoryDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemCategoryDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..visible = json['visible'] as bool?
    ..deprecated = json['deprecated'] as bool?
    ..shortTitle = json['shortTitle'] as String?
    ..itemTypeRegex = json['itemTypeRegex'] as String?
    ..grantDestinyBreakerType = _$enumDecodeNullable(
        _$DestinyBreakerTypeEnumMap, json['grantDestinyBreakerType'],
        unknownValue: DestinyBreakerType.ProtectedInvalidEnumValue)
    ..plugCategoryIdentifier = json['plugCategoryIdentifier'] as String?
    ..itemTypeRegexNot = json['itemTypeRegexNot'] as String?
    ..originBucketIdentifier = json['originBucketIdentifier'] as String?
    ..grantDestinyItemType = _$enumDecodeNullable(
        _$DestinyItemTypeEnumMap, json['grantDestinyItemType'],
        unknownValue: DestinyItemType.ProtectedInvalidEnumValue)
    ..grantDestinySubType = _$enumDecodeNullable(
        _$DestinyItemSubTypeEnumMap, json['grantDestinySubType'],
        unknownValue: DestinyItemSubType.ProtectedInvalidEnumValue)
    ..grantDestinyClass = _$enumDecodeNullable(
        _$DestinyClassEnumMap, json['grantDestinyClass'],
        unknownValue: DestinyClass.ProtectedInvalidEnumValue)
    ..traitId = json['traitId'] as String?
    ..groupedCategoryHashes = (json['groupedCategoryHashes'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList()
    ..parentCategoryHashes = (json['parentCategoryHashes'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList()
    ..groupCategoryOnly = json['groupCategoryOnly'] as bool?
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyItemCategoryDefinitionToJson(
        DestinyItemCategoryDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'visible': instance.visible,
      'deprecated': instance.deprecated,
      'shortTitle': instance.shortTitle,
      'itemTypeRegex': instance.itemTypeRegex,
      'grantDestinyBreakerType':
          _$DestinyBreakerTypeEnumMap[instance.grantDestinyBreakerType],
      'plugCategoryIdentifier': instance.plugCategoryIdentifier,
      'itemTypeRegexNot': instance.itemTypeRegexNot,
      'originBucketIdentifier': instance.originBucketIdentifier,
      'grantDestinyItemType':
          _$DestinyItemTypeEnumMap[instance.grantDestinyItemType],
      'grantDestinySubType':
          _$DestinyItemSubTypeEnumMap[instance.grantDestinySubType],
      'grantDestinyClass': _$DestinyClassEnumMap[instance.grantDestinyClass],
      'traitId': instance.traitId,
      'groupedCategoryHashes': instance.groupedCategoryHashes,
      'parentCategoryHashes': instance.parentCategoryHashes,
      'groupCategoryOnly': instance.groupCategoryOnly,
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

const _$DestinyBreakerTypeEnumMap = {
  DestinyBreakerType.None: 0,
  DestinyBreakerType.ShieldPiercing: 1,
  DestinyBreakerType.Disruption: 2,
  DestinyBreakerType.Stagger: 3,
  DestinyBreakerType.ProtectedInvalidEnumValue: 999999999,
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
  DestinyItemSubType.DummyRepeatableBounty: 32,
  DestinyItemSubType.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyClassEnumMap = {
  DestinyClass.Titan: 0,
  DestinyClass.Hunter: 1,
  DestinyClass.Warlock: 2,
  DestinyClass.Unknown: 3,
  DestinyClass.ProtectedInvalidEnumValue: 999999999,
};
