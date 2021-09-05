// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_inventory_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemInventoryBlockDefinition
    _$DestinyItemInventoryBlockDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyItemInventoryBlockDefinition()
    ..stackUniqueLabel = json['stackUniqueLabel'] as String?
    ..maxStackSize = json['maxStackSize'] as int?
    ..bucketTypeHash = json['bucketTypeHash'] as int?
    ..recoveryBucketTypeHash = json['recoveryBucketTypeHash'] as int?
    ..tierTypeHash = json['tierTypeHash'] as int?
    ..isInstanceItem = json['isInstanceItem'] as bool?
    ..tierTypeName = json['tierTypeName'] as String?
    ..tierType = _$enumDecodeNullable(_$TierTypeEnumMap, json['tierType'],
        unknownValue: TierType.ProtectedInvalidEnumValue)
    ..expirationTooltip = json['expirationTooltip'] as String?
    ..expiredInActivityMessage = json['expiredInActivityMessage'] as String?
    ..expiredInOrbitMessage = json['expiredInOrbitMessage'] as String?
    ..suppressExpirationWhenObjectivesComplete =
        json['suppressExpirationWhenObjectivesComplete'] as bool?;
}

Map<String, dynamic> _$DestinyItemInventoryBlockDefinitionToJson(
        DestinyItemInventoryBlockDefinition instance) =>
    <String, dynamic>{
      'stackUniqueLabel': instance.stackUniqueLabel,
      'maxStackSize': instance.maxStackSize,
      'bucketTypeHash': instance.bucketTypeHash,
      'recoveryBucketTypeHash': instance.recoveryBucketTypeHash,
      'tierTypeHash': instance.tierTypeHash,
      'isInstanceItem': instance.isInstanceItem,
      'tierTypeName': instance.tierTypeName,
      'tierType': _$TierTypeEnumMap[instance.tierType],
      'expirationTooltip': instance.expirationTooltip,
      'expiredInActivityMessage': instance.expiredInActivityMessage,
      'expiredInOrbitMessage': instance.expiredInOrbitMessage,
      'suppressExpirationWhenObjectivesComplete':
          instance.suppressExpirationWhenObjectivesComplete,
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

const _$TierTypeEnumMap = {
  TierType.Unknown: 0,
  TierType.Currency: 1,
  TierType.Basic: 2,
  TierType.Common: 3,
  TierType.Rare: 4,
  TierType.Superior: 5,
  TierType.Exotic: 6,
  TierType.ProtectedInvalidEnumValue: 999999999,
};
