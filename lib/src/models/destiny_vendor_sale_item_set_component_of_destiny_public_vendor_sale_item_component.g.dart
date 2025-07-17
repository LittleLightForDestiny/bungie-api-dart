// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_sale_item_set_component_of_destiny_public_vendor_sale_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent
_$DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent()
      ..saleItems = (json['saleItems'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyPublicVendorSaleItemComponent.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      );

Map<String, dynamic>
_$DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponentToJson(
  DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent
  instance,
) => <String, dynamic>{
  'saleItems': instance.saleItems?.map((k, e) => MapEntry(k, e.toJson())),
};
