// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_inventory_flyout_bucket_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorInventoryFlyoutBucketDefinition
    _$DestinyVendorInventoryFlyoutBucketDefinitionFromJson(
        Map<String, dynamic> json) {
  return DestinyVendorInventoryFlyoutBucketDefinition()
    ..collapsible = json['collapsible'] as bool
    ..inventoryBucketHash = json['inventoryBucketHash'] as int
    ..sortItemsBy = _$enumDecodeNullable(
        _$DestinyItemSortTypeEnumMap, json['sortItemsBy'],
        unknownValue: DestinyItemSortType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$DestinyVendorInventoryFlyoutBucketDefinitionToJson(
        DestinyVendorInventoryFlyoutBucketDefinition instance) =>
    <String, dynamic>{
      'collapsible': instance.collapsible,
      'inventoryBucketHash': instance.inventoryBucketHash,
      'sortItemsBy': _$DestinyItemSortTypeEnumMap[instance.sortItemsBy],
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

const _$DestinyItemSortTypeEnumMap = {
  DestinyItemSortType.ItemId: 0,
  DestinyItemSortType.Timestamp: 1,
  DestinyItemSortType.StackSize: 2,
  DestinyItemSortType.ProtectedInvalidEnumValue: 999999999,
};
