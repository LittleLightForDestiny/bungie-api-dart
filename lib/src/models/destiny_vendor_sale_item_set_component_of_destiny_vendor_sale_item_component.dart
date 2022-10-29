import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_vendor_sale_item_component.dart';

part 'destiny_vendor_sale_item_set_component_of_destiny_vendor_sale_item_component.g.dart';

@JsonSerializable()
class DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent{	
	DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent();

	
	@JsonKey(name:'saleItems')
	Map<String, DestinyVendorSaleItemComponent>? saleItems;

	factory DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponentToJson(this);

	static Future<DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent>((json)=>DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}