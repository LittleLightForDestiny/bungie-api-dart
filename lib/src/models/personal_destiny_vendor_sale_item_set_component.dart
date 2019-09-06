import 'destiny_vendor_sale_item_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'personal_destiny_vendor_sale_item_set_component.g.dart';

@JsonSerializable()
class PersonalDestinyVendorSaleItemSetComponent {

	@JsonKey(name:'saleItems')
	Map<String, DestinyVendorSaleItemComponent> saleItems;
	PersonalDestinyVendorSaleItemSetComponent();

	factory PersonalDestinyVendorSaleItemSetComponent.fromJson(Map<String, dynamic> json) => _$PersonalDestinyVendorSaleItemSetComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$PersonalDestinyVendorSaleItemSetComponentToJson(this);
}
