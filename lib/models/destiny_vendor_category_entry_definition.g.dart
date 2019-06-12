// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_category_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorCategoryEntryDefinition
    _$DestinyVendorCategoryEntryDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyVendorCategoryEntryDefinition()
    ..categoryIndex = json['categoryIndex'] as int
    ..categoryId = json['categoryId'] as String
    ..sortValue = json['sortValue'] as int
    ..categoryHash = json['categoryHash'] as int
    ..quantityAvailable = json['quantityAvailable'] as int
    ..showUnavailableItems = json['showUnavailableItems'] as bool
    ..hideIfNoCurrency = json['hideIfNoCurrency'] as bool
    ..hideFromRegularPurchase = json['hideFromRegularPurchase'] as bool
    ..buyStringOverride = json['buyStringOverride'] as String
    ..disabledDescription = json['disabledDescription'] as String
    ..displayTitle = json['displayTitle'] as String
    ..overlay = json['overlay'] == null
        ? null
        : DestinyVendorCategoryOverlayDefinition.fromJson(
            json['overlay'] as Map<String, dynamic>)
    ..vendorItemIndexes =
        (json['vendorItemIndexes'] as List)?.map((e) => e as int)?.toList()
    ..isPreview = json['isPreview'] as bool
    ..isDisplayOnly = json['isDisplayOnly'] as bool
    ..resetIntervalMinutesOverride = json['resetIntervalMinutesOverride'] as int
    ..resetOffsetMinutesOverride = json['resetOffsetMinutesOverride'] as int;
}

Map<String, dynamic> _$DestinyVendorCategoryEntryDefinitionToJson(
        DestinyVendorCategoryEntryDefinition instance) =>
    <String, dynamic>{
      'categoryIndex': instance.categoryIndex,
      'categoryId': instance.categoryId,
      'sortValue': instance.sortValue,
      'categoryHash': instance.categoryHash,
      'quantityAvailable': instance.quantityAvailable,
      'showUnavailableItems': instance.showUnavailableItems,
      'hideIfNoCurrency': instance.hideIfNoCurrency,
      'hideFromRegularPurchase': instance.hideFromRegularPurchase,
      'buyStringOverride': instance.buyStringOverride,
      'disabledDescription': instance.disabledDescription,
      'displayTitle': instance.displayTitle,
      'overlay': instance.overlay,
      'vendorItemIndexes': instance.vendorItemIndexes,
      'isPreview': instance.isPreview,
      'isDisplayOnly': instance.isDisplayOnly,
      'resetIntervalMinutesOverride': instance.resetIntervalMinutesOverride,
      'resetOffsetMinutesOverride': instance.resetOffsetMinutesOverride
    };
