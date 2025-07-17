// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_category_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorCategoryEntryDefinition
_$DestinyVendorCategoryEntryDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyVendorCategoryEntryDefinition()
      ..categoryIndex = (json['categoryIndex'] as num?)?.toInt()
      ..sortValue = (json['sortValue'] as num?)?.toInt()
      ..categoryHash = (json['categoryHash'] as num?)?.toInt()
      ..quantityAvailable = (json['quantityAvailable'] as num?)?.toInt()
      ..showUnavailableItems = json['showUnavailableItems'] as bool?
      ..hideIfNoCurrency = json['hideIfNoCurrency'] as bool?
      ..hideFromRegularPurchase = json['hideFromRegularPurchase'] as bool?
      ..buyStringOverride = json['buyStringOverride'] as String?
      ..disabledDescription = json['disabledDescription'] as String?
      ..displayTitle = json['displayTitle'] as String?
      ..overlay =
          json['overlay'] == null
              ? null
              : DestinyVendorCategoryOverlayDefinition.fromJson(
                json['overlay'] as Map<String, dynamic>,
              )
      ..vendorItemIndexes =
          (json['vendorItemIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..isPreview = json['isPreview'] as bool?
      ..isDisplayOnly = json['isDisplayOnly'] as bool?
      ..resetIntervalMinutesOverride =
          (json['resetIntervalMinutesOverride'] as num?)?.toInt()
      ..resetOffsetMinutesOverride =
          (json['resetOffsetMinutesOverride'] as num?)?.toInt();

Map<String, dynamic> _$DestinyVendorCategoryEntryDefinitionToJson(
  DestinyVendorCategoryEntryDefinition instance,
) => <String, dynamic>{
  'categoryIndex': instance.categoryIndex,
  'sortValue': instance.sortValue,
  'categoryHash': instance.categoryHash,
  'quantityAvailable': instance.quantityAvailable,
  'showUnavailableItems': instance.showUnavailableItems,
  'hideIfNoCurrency': instance.hideIfNoCurrency,
  'hideFromRegularPurchase': instance.hideFromRegularPurchase,
  'buyStringOverride': instance.buyStringOverride,
  'disabledDescription': instance.disabledDescription,
  'displayTitle': instance.displayTitle,
  'overlay': instance.overlay?.toJson(),
  'vendorItemIndexes': instance.vendorItemIndexes,
  'isPreview': instance.isPreview,
  'isDisplayOnly': instance.isDisplayOnly,
  'resetIntervalMinutesOverride': instance.resetIntervalMinutesOverride,
  'resetOffsetMinutesOverride': instance.resetOffsetMinutesOverride,
};
