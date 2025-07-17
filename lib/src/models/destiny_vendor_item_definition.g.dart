// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorItemDefinition _$DestinyVendorItemDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyVendorItemDefinition()
      ..vendorItemIndex = (json['vendorItemIndex'] as num?)?.toInt()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..quantity = (json['quantity'] as num?)?.toInt()
      ..failureIndexes = (json['failureIndexes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..currencies = (json['currencies'] as List<dynamic>?)
          ?.map((e) =>
              DestinyVendorItemQuantity.fromJson(e as Map<String, dynamic>))
          .toList()
      ..refundPolicy = decodeDestinyVendorItemRefundPolicy(json['refundPolicy'])
      ..refundTimeLimit = (json['refundTimeLimit'] as num?)?.toInt()
      ..creationLevels = (json['creationLevels'] as List<dynamic>?)
          ?.map((e) => DestinyItemCreationEntryLevelDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..displayCategoryIndex = (json['displayCategoryIndex'] as num?)?.toInt()
      ..categoryIndex = (json['categoryIndex'] as num?)?.toInt()
      ..originalCategoryIndex = (json['originalCategoryIndex'] as num?)?.toInt()
      ..minimumLevel = (json['minimumLevel'] as num?)?.toInt()
      ..maximumLevel = (json['maximumLevel'] as num?)?.toInt()
      ..action = json['action'] == null
          ? null
          : DestinyVendorSaleItemActionBlockDefinition.fromJson(
              json['action'] as Map<String, dynamic>)
      ..displayCategory = json['displayCategory'] as String?
      ..inventoryBucketHash = (json['inventoryBucketHash'] as num?)?.toInt()
      ..visibilityScope = decodeDestinyGatingScope(json['visibilityScope'])
      ..purchasableScope = decodeDestinyGatingScope(json['purchasableScope'])
      ..exclusivity = decodeBungieMembershipType(json['exclusivity'])
      ..isOffer = json['isOffer'] as bool?
      ..isCrm = json['isCrm'] as bool?
      ..sortValue = (json['sortValue'] as num?)?.toInt()
      ..expirationTooltip = json['expirationTooltip'] as String?
      ..redirectToSaleIndexes =
          (json['redirectToSaleIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..socketOverrides = (json['socketOverrides'] as List<dynamic>?)
          ?.map((e) => DestinyVendorItemSocketOverride.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..unpurchasable = json['unpurchasable'] as bool?;

Map<String, dynamic> _$DestinyVendorItemDefinitionToJson(
        DestinyVendorItemDefinition instance) =>
    <String, dynamic>{
      'vendorItemIndex': instance.vendorItemIndex,
      'itemHash': instance.itemHash,
      'quantity': instance.quantity,
      'failureIndexes': instance.failureIndexes,
      'currencies': instance.currencies?.map((e) => e.toJson()).toList(),
      'refundPolicy':
          encodeDestinyVendorItemRefundPolicy(instance.refundPolicy),
      'refundTimeLimit': instance.refundTimeLimit,
      'creationLevels':
          instance.creationLevels?.map((e) => e.toJson()).toList(),
      'displayCategoryIndex': instance.displayCategoryIndex,
      'categoryIndex': instance.categoryIndex,
      'originalCategoryIndex': instance.originalCategoryIndex,
      'minimumLevel': instance.minimumLevel,
      'maximumLevel': instance.maximumLevel,
      'action': instance.action?.toJson(),
      'displayCategory': instance.displayCategory,
      'inventoryBucketHash': instance.inventoryBucketHash,
      'visibilityScope': encodeDestinyGatingScope(instance.visibilityScope),
      'purchasableScope': encodeDestinyGatingScope(instance.purchasableScope),
      'exclusivity': encodeBungieMembershipType(instance.exclusivity),
      'isOffer': instance.isOffer,
      'isCrm': instance.isCrm,
      'sortValue': instance.sortValue,
      'expirationTooltip': instance.expirationTooltip,
      'redirectToSaleIndexes': instance.redirectToSaleIndexes,
      'socketOverrides':
          instance.socketOverrides?.map((e) => e.toJson()).toList(),
      'unpurchasable': instance.unpurchasable,
    };
