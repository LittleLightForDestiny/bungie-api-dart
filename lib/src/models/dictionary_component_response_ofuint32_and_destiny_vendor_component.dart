import 'package:json_annotation/json_annotation.dart';

import 'destiny_vendor_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_vendor_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyVendorComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyVendorComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyVendorComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyVendorComponentFromJson(json);

	@JsonKey(name:'data')
	Map<String, DestinyVendorComponent> data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyVendorComponentToJson(this);
}