import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'public_destiny_vendor_sale_item_set_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_public_destiny_vendor_sale_item_set_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent{	
	DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent();

	
	@JsonKey(name:'data')
	Map<String, PublicDestinyVendorSaleItemSetComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponentToJson(this);

	static Future<DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent>((json)=>DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}