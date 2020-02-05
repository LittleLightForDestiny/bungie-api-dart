// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_sale_item_set_component_of_destiny_vendor_sale_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent
    _$DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponentFromJson(
        Map<String, dynamic> json) {
  return DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent()
    ..saleItems = (json['saleItems'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyVendorSaleItemComponent.fromJson(
                  e as Map<String, dynamic>)),
    );
}

Map<String, dynamic>
    _$DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponentToJson(
            DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent
                instance) =>
        <String, dynamic>{
          'saleItems': instance.saleItems,
        };
