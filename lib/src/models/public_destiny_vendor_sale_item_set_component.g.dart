// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_destiny_vendor_sale_item_set_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicDestinyVendorSaleItemSetComponent
_$PublicDestinyVendorSaleItemSetComponentFromJson(Map<String, dynamic> json) =>
    PublicDestinyVendorSaleItemSetComponent()
      ..saleItems = (json['saleItems'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyPublicVendorSaleItemComponent.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      );

Map<String, dynamic> _$PublicDestinyVendorSaleItemSetComponentToJson(
  PublicDestinyVendorSaleItemSetComponent instance,
) => <String, dynamic>{
  'saleItems': instance.saleItems?.map((k, e) => MapEntry(k, e.toJson())),
};
