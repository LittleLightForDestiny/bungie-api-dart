// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorDefinition _$DestinyVendorDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyVendorDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyVendorDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..vendorProgressionType = _$enumDecodeNullable(
        _$DestinyVendorProgressionTypeEnumMap, json['vendorProgressionType'],
        unknownValue: DestinyVendorProgressionType.ProtectedInvalidEnumValue)
    ..buyString = json['buyString'] as String?
    ..sellString = json['sellString'] as String?
    ..displayItemHash = json['displayItemHash'] as int?
    ..inhibitBuying = json['inhibitBuying'] as bool?
    ..inhibitSelling = json['inhibitSelling'] as bool?
    ..factionHash = json['factionHash'] as int?
    ..resetIntervalMinutes = json['resetIntervalMinutes'] as int?
    ..resetOffsetMinutes = json['resetOffsetMinutes'] as int?
    ..failureStrings = (json['failureStrings'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..unlockRanges = (json['unlockRanges'] as List<dynamic>?)
        ?.map((e) => DateRange.fromJson(e as Map<String, dynamic>))
        .toList()
    ..vendorIdentifier = json['vendorIdentifier'] as String?
    ..vendorPortrait = json['vendorPortrait'] as String?
    ..vendorBanner = json['vendorBanner'] as String?
    ..enabled = json['enabled'] as bool?
    ..visible = json['visible'] as bool?
    ..vendorSubcategoryIdentifier =
        json['vendorSubcategoryIdentifier'] as String?
    ..consolidateCategories = json['consolidateCategories'] as bool?
    ..actions = (json['actions'] as List<dynamic>?)
        ?.map((e) =>
            DestinyVendorActionDefinition.fromJson(e as Map<String, dynamic>))
        .toList()
    ..categories = (json['categories'] as List<dynamic>?)
        ?.map((e) => DestinyVendorCategoryEntryDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..originalCategories = (json['originalCategories'] as List<dynamic>?)
        ?.map((e) => DestinyVendorCategoryEntryDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..displayCategories = (json['displayCategories'] as List<dynamic>?)
        ?.map((e) => DestinyDisplayCategoryDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..interactions = (json['interactions'] as List<dynamic>?)
        ?.map((e) => DestinyVendorInteractionDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..inventoryFlyouts = (json['inventoryFlyouts'] as List<dynamic>?)
        ?.map((e) => DestinyVendorInventoryFlyoutDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..itemList = (json['itemList'] as List<dynamic>?)
        ?.map((e) =>
            DestinyVendorItemDefinition.fromJson(e as Map<String, dynamic>))
        .toList()
    ..services = (json['services'] as List<dynamic>?)
        ?.map((e) =>
            DestinyVendorServiceDefinition.fromJson(e as Map<String, dynamic>))
        .toList()
    ..acceptedItems = (json['acceptedItems'] as List<dynamic>?)
        ?.map((e) => DestinyVendorAcceptedItemDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..returnWithVendorRequest = json['returnWithVendorRequest'] as bool?
    ..locations = (json['locations'] as List<dynamic>?)
        ?.map((e) =>
            DestinyVendorLocationDefinition.fromJson(e as Map<String, dynamic>))
        .toList()
    ..groups = (json['groups'] as List<dynamic>?)
        ?.map((e) =>
            DestinyVendorGroupReference.fromJson(e as Map<String, dynamic>))
        .toList()
    ..ignoreSaleItemHashes = (json['ignoreSaleItemHashes'] as List<dynamic>?)
        ?.map((e) => e as int)
        .toList()
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyVendorDefinitionToJson(
        DestinyVendorDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'vendorProgressionType':
          _$DestinyVendorProgressionTypeEnumMap[instance.vendorProgressionType],
      'buyString': instance.buyString,
      'sellString': instance.sellString,
      'displayItemHash': instance.displayItemHash,
      'inhibitBuying': instance.inhibitBuying,
      'inhibitSelling': instance.inhibitSelling,
      'factionHash': instance.factionHash,
      'resetIntervalMinutes': instance.resetIntervalMinutes,
      'resetOffsetMinutes': instance.resetOffsetMinutes,
      'failureStrings': instance.failureStrings,
      'unlockRanges': instance.unlockRanges,
      'vendorIdentifier': instance.vendorIdentifier,
      'vendorPortrait': instance.vendorPortrait,
      'vendorBanner': instance.vendorBanner,
      'enabled': instance.enabled,
      'visible': instance.visible,
      'vendorSubcategoryIdentifier': instance.vendorSubcategoryIdentifier,
      'consolidateCategories': instance.consolidateCategories,
      'actions': instance.actions,
      'categories': instance.categories,
      'originalCategories': instance.originalCategories,
      'displayCategories': instance.displayCategories,
      'interactions': instance.interactions,
      'inventoryFlyouts': instance.inventoryFlyouts,
      'itemList': instance.itemList,
      'services': instance.services,
      'acceptedItems': instance.acceptedItems,
      'returnWithVendorRequest': instance.returnWithVendorRequest,
      'locations': instance.locations,
      'groups': instance.groups,
      'ignoreSaleItemHashes': instance.ignoreSaleItemHashes,
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

const _$DestinyVendorProgressionTypeEnumMap = {
  DestinyVendorProgressionType.Default: 0,
  DestinyVendorProgressionType.Ritual: 1,
  DestinyVendorProgressionType.NoSeasonalRefresh: 2,
  DestinyVendorProgressionType.ProtectedInvalidEnumValue: 999999999,
};
