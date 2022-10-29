import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_public_vendor_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_public_vendor_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent{	
	DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyPublicVendorComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponentToJson(this);

	static Future<DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent>((json)=>DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}