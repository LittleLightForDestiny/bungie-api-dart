import 'destiny_public_vendor_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofuint32_and_destiny_public_vendor_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent {

	@JsonKey(name:'data')
	Map<String, DestinyPublicVendorComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponentToJson(this);
}
