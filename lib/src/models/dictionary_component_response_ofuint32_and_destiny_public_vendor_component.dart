import 'package:json_annotation/json_annotation.dart';

import 'destiny_public_vendor_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_public_vendor_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent{	
	DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponentToJson(this);
	
	@JsonKey(name:'data')
	Map<String, DestinyPublicVendorComponent>? data;
	
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}