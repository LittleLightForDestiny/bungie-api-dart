import 'personal_destiny_vendor_sale_item_set_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofuint32_and_personal_destiny_vendor_sale_item_set_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent {

	@JsonKey(name:'data')
	Map<String, PersonalDestinyVendorSaleItemSetComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent();

	factory DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponentToJson(this);
}
