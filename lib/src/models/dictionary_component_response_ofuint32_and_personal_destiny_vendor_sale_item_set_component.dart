import 'package:json_annotation/json_annotation.dart';

import 'personal_destiny_vendor_sale_item_set_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_personal_destiny_vendor_sale_item_set_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent{	
	DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent();

	factory DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponentToJson(this);
	
	@JsonKey(name:'data')
	Map<String, PersonalDestinyVendorSaleItemSetComponent>? data;
	
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}