// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorDefinition _$DestinyVendorDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyVendorDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyVendorDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..vendorProgressionType =
          decodeDestinyVendorProgressionType(json['vendorProgressionType'])
      ..buyString = json['buyString'] as String?
      ..sellString = json['sellString'] as String?
      ..displayItemHash = (json['displayItemHash'] as num?)?.toInt()
      ..inhibitBuying = json['inhibitBuying'] as bool?
      ..inhibitSelling = json['inhibitSelling'] as bool?
      ..factionHash = (json['factionHash'] as num?)?.toInt()
      ..resetIntervalMinutes = (json['resetIntervalMinutes'] as num?)?.toInt()
      ..resetOffsetMinutes = (json['resetOffsetMinutes'] as num?)?.toInt()
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
          ?.map((e) => DestinyVendorServiceDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..acceptedItems = (json['acceptedItems'] as List<dynamic>?)
          ?.map((e) => DestinyVendorAcceptedItemDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..returnWithVendorRequest = json['returnWithVendorRequest'] as bool?
      ..locations = (json['locations'] as List<dynamic>?)
          ?.map((e) => DestinyVendorLocationDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..groups = (json['groups'] as List<dynamic>?)
          ?.map((e) =>
              DestinyVendorGroupReference.fromJson(e as Map<String, dynamic>))
          .toList()
      ..ignoreSaleItemHashes = (json['ignoreSaleItemHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyVendorDefinitionToJson(
        DestinyVendorDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'vendorProgressionType':
          encodeDestinyVendorProgressionType(instance.vendorProgressionType),
      'buyString': instance.buyString,
      'sellString': instance.sellString,
      'displayItemHash': instance.displayItemHash,
      'inhibitBuying': instance.inhibitBuying,
      'inhibitSelling': instance.inhibitSelling,
      'factionHash': instance.factionHash,
      'resetIntervalMinutes': instance.resetIntervalMinutes,
      'resetOffsetMinutes': instance.resetOffsetMinutes,
      'failureStrings': instance.failureStrings,
      'unlockRanges': instance.unlockRanges?.map((e) => e.toJson()).toList(),
      'vendorIdentifier': instance.vendorIdentifier,
      'vendorPortrait': instance.vendorPortrait,
      'vendorBanner': instance.vendorBanner,
      'enabled': instance.enabled,
      'visible': instance.visible,
      'vendorSubcategoryIdentifier': instance.vendorSubcategoryIdentifier,
      'consolidateCategories': instance.consolidateCategories,
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'originalCategories':
          instance.originalCategories?.map((e) => e.toJson()).toList(),
      'displayCategories':
          instance.displayCategories?.map((e) => e.toJson()).toList(),
      'interactions': instance.interactions?.map((e) => e.toJson()).toList(),
      'inventoryFlyouts':
          instance.inventoryFlyouts?.map((e) => e.toJson()).toList(),
      'itemList': instance.itemList?.map((e) => e.toJson()).toList(),
      'services': instance.services?.map((e) => e.toJson()).toList(),
      'acceptedItems': instance.acceptedItems?.map((e) => e.toJson()).toList(),
      'returnWithVendorRequest': instance.returnWithVendorRequest,
      'locations': instance.locations?.map((e) => e.toJson()).toList(),
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
      'ignoreSaleItemHashes': instance.ignoreSaleItemHashes,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
