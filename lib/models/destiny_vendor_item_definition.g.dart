// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorItemDefinition _$DestinyVendorItemDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyVendorItemDefinition()
    ..vendorItemIndex = json['vendorItemIndex'] as int
    ..itemHash = json['itemHash'] as int
    ..quantity = json['quantity'] as int
    ..failureIndexes =
        (json['failureIndexes'] as List)?.map((e) => e as int)?.toList()
    ..currencies = (json['currencies'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyVendorItemQuantity.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..refundPolicy = json['refundPolicy'] as int
    ..refundTimeLimit = json['refundTimeLimit'] as int
    ..creationLevels = (json['creationLevels'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemCreationEntryLevelDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..displayCategoryIndex = json['displayCategoryIndex'] as int
    ..categoryIndex = json['categoryIndex'] as int
    ..originalCategoryIndex = json['originalCategoryIndex'] as int
    ..minimumLevel = json['minimumLevel'] as int
    ..maximumLevel = json['maximumLevel'] as int
    ..action = json['action'] == null
        ? null
        : DestinyVendorSaleItemActionBlockDefinition.fromJson(
            json['action'] as Map<String, dynamic>)
    ..displayCategory = json['displayCategory'] as String
    ..inventoryBucketHash = json['inventoryBucketHash'] as int
    ..visibilityScope = json['visibilityScope'] as int
    ..purchasableScope = json['purchasableScope'] as int
    ..exclusivity = json['exclusivity'] as int
    ..isOffer = json['isOffer'] as bool
    ..isCrm = json['isCrm'] as bool
    ..sortValue = json['sortValue'] as int
    ..expirationTooltip = json['expirationTooltip'] as String
    ..redirectToSaleIndexes =
        (json['redirectToSaleIndexes'] as List)?.map((e) => e as int)?.toList()
    ..socketOverrides = (json['socketOverrides'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyVendorItemSocketOverride.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyVendorItemDefinitionToJson(
        DestinyVendorItemDefinition instance) =>
    <String, dynamic>{
      'vendorItemIndex': instance.vendorItemIndex,
      'itemHash': instance.itemHash,
      'quantity': instance.quantity,
      'failureIndexes': instance.failureIndexes,
      'currencies': instance.currencies,
      'refundPolicy': instance.refundPolicy,
      'refundTimeLimit': instance.refundTimeLimit,
      'creationLevels': instance.creationLevels,
      'displayCategoryIndex': instance.displayCategoryIndex,
      'categoryIndex': instance.categoryIndex,
      'originalCategoryIndex': instance.originalCategoryIndex,
      'minimumLevel': instance.minimumLevel,
      'maximumLevel': instance.maximumLevel,
      'action': instance.action,
      'displayCategory': instance.displayCategory,
      'inventoryBucketHash': instance.inventoryBucketHash,
      'visibilityScope': instance.visibilityScope,
      'purchasableScope': instance.purchasableScope,
      'exclusivity': instance.exclusivity,
      'isOffer': instance.isOffer,
      'isCrm': instance.isCrm,
      'sortValue': instance.sortValue,
      'expirationTooltip': instance.expirationTooltip,
      'redirectToSaleIndexes': instance.redirectToSaleIndexes,
      'socketOverrides': instance.socketOverrides
    };
