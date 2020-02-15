// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_inventory_bucket_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInventoryBucketDefinition _$DestinyInventoryBucketDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyInventoryBucketDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..scope = _$enumDecodeNullable(_$BucketScopeEnumMap, json['scope'],
        unknownValue: BucketScope.ProtectedInvalidEnumValue)
    ..category = _$enumDecodeNullable(_$BucketCategoryEnumMap, json['category'],
        unknownValue: BucketCategory.ProtectedInvalidEnumValue)
    ..bucketOrder = json['bucketOrder'] as int
    ..itemCount = json['itemCount'] as int
    ..location = _$enumDecodeNullable(_$ItemLocationEnumMap, json['location'],
        unknownValue: ItemLocation.ProtectedInvalidEnumValue)
    ..hasTransferDestination = json['hasTransferDestination'] as bool
    ..enabled = json['enabled'] as bool
    ..fifo = json['fifo'] as bool
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyInventoryBucketDefinitionToJson(
        DestinyInventoryBucketDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'scope': _$BucketScopeEnumMap[instance.scope],
      'category': _$BucketCategoryEnumMap[instance.category],
      'bucketOrder': instance.bucketOrder,
      'itemCount': instance.itemCount,
      'location': _$ItemLocationEnumMap[instance.location],
      'hasTransferDestination': instance.hasTransferDestination,
      'enabled': instance.enabled,
      'fifo': instance.fifo,
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

const _$BucketScopeEnumMap = {
  BucketScope.Character: 0,
  BucketScope.Account: 1,
  BucketScope.ProtectedInvalidEnumValue: 999999999,
};

const _$BucketCategoryEnumMap = {
  BucketCategory.Invisible: 0,
  BucketCategory.Item: 1,
  BucketCategory.Currency: 2,
  BucketCategory.Equippable: 3,
  BucketCategory.Ignored: 4,
  BucketCategory.ProtectedInvalidEnumValue: 999999999,
};

const _$ItemLocationEnumMap = {
  ItemLocation.Unknown: 0,
  ItemLocation.Inventory: 1,
  ItemLocation.Vault: 2,
  ItemLocation.Vendor: 3,
  ItemLocation.Postmaster: 4,
  ItemLocation.ProtectedInvalidEnumValue: 999999999,
};
