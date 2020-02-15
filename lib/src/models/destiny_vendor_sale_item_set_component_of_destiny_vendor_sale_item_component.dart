import 'package:json_annotation/json_annotation.dart';

import 'destiny_vendor_sale_item_component.dart';

part 'destiny_vendor_sale_item_set_component_of_destiny_vendor_sale_item_component.g.dart';

@JsonSerializable()
class DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent{
	
	DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent();

	factory DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'saleItems')
	Map<String, DestinyVendorSaleItemComponent> saleItems;

	
	
	Map<String, dynamic> toJson() => _$DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponentToJson(this);
}