import 'package:json_annotation/json_annotation.dart';

import 'destiny_public_vendor_sale_item_component.dart';

part 'destiny_vendor_sale_item_set_component_of_destiny_public_vendor_sale_item_component.g.dart';

@JsonSerializable()
class DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent{
	
	DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent();

	factory DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponentFromJson(json);
	}

	@JsonKey(name:'saleItems')
	Map<String, DestinyPublicVendorSaleItemComponent>? saleItems;

	
	
	Map<String, dynamic> toJson() => _$DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponentToJson(this);
}