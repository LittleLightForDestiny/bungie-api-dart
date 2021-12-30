import 'package:json_annotation/json_annotation.dart';

import 'destiny_public_vendor_sale_item_component.dart';

part 'public_destiny_vendor_sale_item_set_component.g.dart';

@JsonSerializable()
class PublicDestinyVendorSaleItemSetComponent{	
	PublicDestinyVendorSaleItemSetComponent();

	factory PublicDestinyVendorSaleItemSetComponent.fromJson(Map<String, dynamic> json) {
		return _$PublicDestinyVendorSaleItemSetComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PublicDestinyVendorSaleItemSetComponentToJson(this);
	
	@JsonKey(name:'saleItems')
	Map<String, DestinyPublicVendorSaleItemComponent>? saleItems;
}