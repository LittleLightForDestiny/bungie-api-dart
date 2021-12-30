import 'package:json_annotation/json_annotation.dart';

import 'destiny_vendor_categories_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_vendor_categories_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent{	
	DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponentToJson(this);
	
	@JsonKey(name:'data')
	Map<String, DestinyVendorCategoriesComponent>? data;
	
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}