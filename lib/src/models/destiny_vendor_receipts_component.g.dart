// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_receipts_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorReceiptsComponent _$DestinyVendorReceiptsComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyVendorReceiptsComponent()
    ..receipts = (json['receipts'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyVendorReceipt.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyVendorReceiptsComponentToJson(
        DestinyVendorReceiptsComponent instance) =>
    <String, dynamic>{
      'receipts': instance.receipts,
    };
