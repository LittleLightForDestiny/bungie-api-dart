import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_public_vendor_sale_item_component.dart';

part 'public_destiny_vendor_sale_item_set_component.g.dart';

@JsonSerializable()
class PublicDestinyVendorSaleItemSetComponent{	
	PublicDestinyVendorSaleItemSetComponent();

	
	@JsonKey(name:'saleItems')
	Map<String, DestinyPublicVendorSaleItemComponent>? saleItems;

	factory PublicDestinyVendorSaleItemSetComponent.fromJson(Map<String, dynamic> json) {
		return _$PublicDestinyVendorSaleItemSetComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PublicDestinyVendorSaleItemSetComponentToJson(this);

	static Future<PublicDestinyVendorSaleItemSetComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PublicDestinyVendorSaleItemSetComponent>((json)=>PublicDestinyVendorSaleItemSetComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}