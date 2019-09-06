import 'destiny_vendor_sale_item_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_vendor_sale_item_set_component_of_destiny_vendor_sale_item_component.g.dart';

@JsonSerializable()
class DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent {

	@JsonKey(name:'saleItems')
	Map<String, DestinyVendorSaleItemComponent> saleItems;
	DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent();

	factory DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent.fromJson(Map<String, dynamic> json) => _$DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponentToJson(this);
}
