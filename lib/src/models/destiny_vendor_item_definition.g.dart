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
    ..refundPolicy = _$enumDecodeNullable(
        _$DestinyVendorItemRefundPolicyEnumMap, json['refundPolicy'],
        unknownValue: DestinyVendorItemRefundPolicy.ProtectedInvalidEnumValue)
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
    ..visibilityScope = _$enumDecodeNullable(_$DestinyGatingScopeEnumMap, json['visibilityScope'],
        unknownValue: DestinyGatingScope.ProtectedInvalidEnumValue)
    ..purchasableScope = _$enumDecodeNullable(
        _$DestinyGatingScopeEnumMap, json['purchasableScope'],
        unknownValue: DestinyGatingScope.ProtectedInvalidEnumValue)
    ..exclusivity = _$enumDecodeNullable(_$BungieMembershipTypeEnumMap, json['exclusivity'],
        unknownValue: BungieMembershipType.ProtectedInvalidEnumValue)
    ..isOffer = json['isOffer'] as bool
    ..isCrm = json['isCrm'] as bool
    ..sortValue = json['sortValue'] as int
    ..expirationTooltip = json['expirationTooltip'] as String
    ..redirectToSaleIndexes =
        (json['redirectToSaleIndexes'] as List)?.map((e) => e as int)?.toList()
    ..socketOverrides = (json['socketOverrides'] as List)?.map((e) => e == null ? null : DestinyVendorItemSocketOverride.fromJson(e as Map<String, dynamic>))?.toList();
}

Map<String, dynamic> _$DestinyVendorItemDefinitionToJson(
        DestinyVendorItemDefinition instance) =>
    <String, dynamic>{
      'vendorItemIndex': instance.vendorItemIndex,
      'itemHash': instance.itemHash,
      'quantity': instance.quantity,
      'failureIndexes': instance.failureIndexes,
      'currencies': instance.currencies,
      'refundPolicy':
          _$DestinyVendorItemRefundPolicyEnumMap[instance.refundPolicy],
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
      'visibilityScope': _$DestinyGatingScopeEnumMap[instance.visibilityScope],
      'purchasableScope':
          _$DestinyGatingScopeEnumMap[instance.purchasableScope],
      'exclusivity': _$BungieMembershipTypeEnumMap[instance.exclusivity],
      'isOffer': instance.isOffer,
      'isCrm': instance.isCrm,
      'sortValue': instance.sortValue,
      'expirationTooltip': instance.expirationTooltip,
      'redirectToSaleIndexes': instance.redirectToSaleIndexes,
      'socketOverrides': instance.socketOverrides,
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

const _$DestinyVendorItemRefundPolicyEnumMap = {
  DestinyVendorItemRefundPolicy.NotRefundable: 0,
  DestinyVendorItemRefundPolicy.DeletesItem: 1,
  DestinyVendorItemRefundPolicy.RevokesLicense: 2,
  DestinyVendorItemRefundPolicy.ProtectedInvalidEnumValue: 999999999,
};

const _$DestinyGatingScopeEnumMap = {
  DestinyGatingScope.None: 0,
  DestinyGatingScope.Global: 1,
  DestinyGatingScope.Clan: 2,
  DestinyGatingScope.Profile: 3,
  DestinyGatingScope.Character: 4,
  DestinyGatingScope.Item: 5,
  DestinyGatingScope.AssumedWorstCase: 6,
  DestinyGatingScope.ProtectedInvalidEnumValue: 999999999,
};

const _$BungieMembershipTypeEnumMap = {
  BungieMembershipType.None: 0,
  BungieMembershipType.TigerXbox: 1,
  BungieMembershipType.TigerPsn: 2,
  BungieMembershipType.TigerSteam: 3,
  BungieMembershipType.TigerBlizzard: 4,
  BungieMembershipType.TigerStadia: 5,
  BungieMembershipType.TigerDemon: 10,
  BungieMembershipType.BungieNext: 254,
  BungieMembershipType.All: -1,
  BungieMembershipType.ProtectedInvalidEnumValue: 999999999,
};
