import 'destiny_public_vendor_sale_item_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_sale_item_set_component_of_destiny_public_vendor_sale_item_component.g.dart';

@JsonSerializable()
class DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent {

	@JsonKey(name:'saleItems')
	Map<String, DestinyPublicVendorSaleItemComponent> saleItems;
	DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent();

	factory DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent.fromJson(Map<String, dynamic> json) => _$DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponentToJson(this);
}
