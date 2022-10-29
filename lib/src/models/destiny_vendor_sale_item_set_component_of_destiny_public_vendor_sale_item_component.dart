import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_public_vendor_sale_item_component.dart';

part 'destiny_vendor_sale_item_set_component_of_destiny_public_vendor_sale_item_component.g.dart';

@JsonSerializable()
class DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent{	
	DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent();

	
	@JsonKey(name:'saleItems')
	Map<String, DestinyPublicVendorSaleItemComponent>? saleItems;

	factory DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponentToJson(this);

	static Future<DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent>((json)=>DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}