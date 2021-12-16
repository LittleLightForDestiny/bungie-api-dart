// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorReceipt _$DestinyVendorReceiptFromJson(Map<String, dynamic> json) {
  return DestinyVendorReceipt()
    ..currencyPaid = (json['currencyPaid'] as List<dynamic>?)
        ?.map((e) => DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
        .toList()
    ..itemReceived = json['itemReceived'] == null
        ? null
        : DestinyItemQuantity.fromJson(
            json['itemReceived'] as Map<String, dynamic>)
    ..licenseUnlockHash = json['licenseUnlockHash'] as int?
    ..purchasedByCharacterId = json['purchasedByCharacterId'] as String?
    ..refundPolicy = _$enumDecodeNullable(
        _$DestinyVendorItemRefundPolicyEnumMap, json['refundPolicy'],
        unknownValue: DestinyVendorItemRefundPolicy.ProtectedInvalidEnumValue)
    ..sequenceNumber = json['sequenceNumber'] as int?
    ..timeToExpiration = json['timeToExpiration'] as String?
    ..expiresOn = json['expiresOn'] as String?;
}

Map<String, dynamic> _$DestinyVendorReceiptToJson(
        DestinyVendorReceipt instance) =>
    <String, dynamic>{
      'currencyPaid': instance.currencyPaid,
      'itemReceived': instance.itemReceived,
      'licenseUnlockHash': instance.licenseUnlockHash,
      'purchasedByCharacterId': instance.purchasedByCharacterId,
      'refundPolicy':
          _$DestinyVendorItemRefundPolicyEnumMap[instance.refundPolicy],
      'sequenceNumber': instance.sequenceNumber,
      'timeToExpiration': instance.timeToExpiration,
      'expiresOn': instance.expiresOn,
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

const _$DestinyVendorItemRefundPolicyEnumMap = {
  DestinyVendorItemRefundPolicy.NotRefundable: 0,
  DestinyVendorItemRefundPolicy.DeletesItem: 1,
  DestinyVendorItemRefundPolicy.RevokesLicense: 2,
  DestinyVendorItemRefundPolicy.ProtectedInvalidEnumValue: 999999999,
};
