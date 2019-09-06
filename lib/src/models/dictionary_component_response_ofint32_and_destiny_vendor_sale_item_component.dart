import 'destiny_vendor_sale_item_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofint32_and_destiny_vendor_sale_item_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent {

	@JsonKey(name:'data')
	Map<String, DestinyVendorSaleItemComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent();

	factory DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponentToJson(this);
}
