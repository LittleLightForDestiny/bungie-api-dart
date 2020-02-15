import 'package:json_annotation/json_annotation.dart';

import 'destiny_vendor_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_vendor_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyVendorComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyVendorComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyVendorComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$DictionaryComponentResponseOfuint32AndDestinyVendorComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'data')
	Map<String, DestinyVendorComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyVendorComponentToJson(this);
}