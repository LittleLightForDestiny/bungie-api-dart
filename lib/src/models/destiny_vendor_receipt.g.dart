// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorReceipt _$DestinyVendorReceiptFromJson(
  Map<String, dynamic> json,
) =>
    DestinyVendorReceipt()
      ..currencyPaid =
          (json['currencyPaid'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemQuantity.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..itemReceived =
          json['itemReceived'] == null
              ? null
              : DestinyItemQuantity.fromJson(
                json['itemReceived'] as Map<String, dynamic>,
              )
      ..licenseUnlockHash = (json['licenseUnlockHash'] as num?)?.toInt()
      ..purchasedByCharacterId = json['purchasedByCharacterId'] as String?
      ..refundPolicy = decodeDestinyVendorItemRefundPolicy(json['refundPolicy'])
      ..sequenceNumber = (json['sequenceNumber'] as num?)?.toInt()
      ..timeToExpiration = json['timeToExpiration'] as String?
      ..expiresOn = json['expiresOn'] as String?;

Map<String, dynamic> _$DestinyVendorReceiptToJson(
  DestinyVendorReceipt instance,
) => <String, dynamic>{
  'currencyPaid': instance.currencyPaid?.map((e) => e.toJson()).toList(),
  'itemReceived': instance.itemReceived?.toJson(),
  'licenseUnlockHash': instance.licenseUnlockHash,
  'purchasedByCharacterId': instance.purchasedByCharacterId,
  'refundPolicy': encodeDestinyVendorItemRefundPolicy(instance.refundPolicy),
  'sequenceNumber': instance.sequenceNumber,
  'timeToExpiration': instance.timeToExpiration,
  'expiresOn': instance.expiresOn,
};
