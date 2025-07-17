// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_receipts_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorReceiptsComponent _$DestinyVendorReceiptsComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyVendorReceiptsComponent()
      ..receipts =
          (json['receipts'] as List<dynamic>?)
              ?.map(
                (e) => DestinyVendorReceipt.fromJson(e as Map<String, dynamic>),
              )
              .toList();

Map<String, dynamic> _$DestinyVendorReceiptsComponentToJson(
  DestinyVendorReceiptsComponent instance,
) => <String, dynamic>{
  'receipts': instance.receipts?.map((e) => e.toJson()).toList(),
};
