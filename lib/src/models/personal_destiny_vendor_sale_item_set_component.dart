import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_vendor_sale_item_component.dart';

part 'personal_destiny_vendor_sale_item_set_component.g.dart';

@JsonSerializable()
class PersonalDestinyVendorSaleItemSetComponent{	
	PersonalDestinyVendorSaleItemSetComponent();

	
	@JsonKey(name:'saleItems')
	Map<String, DestinyVendorSaleItemComponent>? saleItems;

	factory PersonalDestinyVendorSaleItemSetComponent.fromJson(Map<String, dynamic> json) {
		return _$PersonalDestinyVendorSaleItemSetComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PersonalDestinyVendorSaleItemSetComponentToJson(this);

	static Future<PersonalDestinyVendorSaleItemSetComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PersonalDestinyVendorSaleItemSetComponent>((json)=>PersonalDestinyVendorSaleItemSetComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}