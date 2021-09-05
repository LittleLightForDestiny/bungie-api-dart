// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemComponent _$DestinyItemComponentFromJson(Map<String, dynamic> json) {
  return DestinyItemComponent()
    ..itemHash = json['itemHash'] as int?
    ..itemInstanceId = json['itemInstanceId'] as String?
    ..quantity = json['quantity'] as int?
    ..bindStatus = _$enumDecodeNullable(
        _$ItemBindStatusEnumMap, json['bindStatus'],
        unknownValue: ItemBindStatus.ProtectedInvalidEnumValue)
    ..location = _$enumDecodeNullable(_$ItemLocationEnumMap, json['location'],
        unknownValue: ItemLocation.ProtectedInvalidEnumValue)
    ..bucketHash = json['bucketHash'] as int?
    ..transferStatus = json['transferStatus'] == null
        ? null
        : TransferStatuses.fromJson(json['transferStatus'] as int)
    ..lockable = json['lockable'] as bool?
    ..state =
        json['state'] == null ? null : ItemState.fromJson(json['state'] as int)
    ..overrideStyleItemHash = json['overrideStyleItemHash'] as int?
    ..expirationDate = json['expirationDate'] as String?
    ..isWrapper = json['isWrapper'] as bool?
    ..tooltipNotificationIndexes =
        (json['tooltipNotificationIndexes'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList()
    ..metricHash = json['metricHash'] as int?
    ..metricObjective = json['metricObjective'] == null
        ? null
        : DestinyObjectiveProgress.fromJson(
            json['metricObjective'] as Map<String, dynamic>)
    ..versionNumber = json['versionNumber'] as int?
    ..itemValueVisibility = (json['itemValueVisibility'] as List<dynamic>?)
        ?.map((e) => e as bool)
        .toList();
}

Map<String, dynamic> _$DestinyItemComponentToJson(
        DestinyItemComponent instance) =>
    <String, dynamic>{
      'itemHash': instance.itemHash,
      'itemInstanceId': instance.itemInstanceId,
      'quantity': instance.quantity,
      'bindStatus': _$ItemBindStatusEnumMap[instance.bindStatus],
      'location': _$ItemLocationEnumMap[instance.location],
      'bucketHash': instance.bucketHash,
      'transferStatus': instance.transferStatus,
      'lockable': instance.lockable,
      'state': instance.state,
      'overrideStyleItemHash': instance.overrideStyleItemHash,
      'expirationDate': instance.expirationDate,
      'isWrapper': instance.isWrapper,
      'tooltipNotificationIndexes': instance.tooltipNotificationIndexes,
      'metricHash': instance.metricHash,
      'metricObjective': instance.metricObjective,
      'versionNumber': instance.versionNumber,
      'itemValueVisibility': instance.itemValueVisibility,
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

const _$ItemBindStatusEnumMap = {
  ItemBindStatus.NotBound: 0,
  ItemBindStatus.BoundToCharacter: 1,
  ItemBindStatus.BoundToAccount: 2,
  ItemBindStatus.BoundToGuild: 3,
  ItemBindStatus.ProtectedInvalidEnumValue: 999999999,
};

const _$ItemLocationEnumMap = {
  ItemLocation.Unknown: 0,
  ItemLocation.Inventory: 1,
  ItemLocation.Vault: 2,
  ItemLocation.Vendor: 3,
  ItemLocation.Postmaster: 4,
  ItemLocation.ProtectedInvalidEnumValue: 999999999,
};
