import 'destiny_vendor_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'dictionary_component_response_ofuint32_and_destiny_vendor_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyVendorComponent {

	@JsonKey(name:'data')
	Map<String, DestinyVendorComponent> data;

	@JsonKey(name:'privacy')
	int privacy;
	DictionaryComponentResponseOfuint32AndDestinyVendorComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyVendorComponent.fromJson(Map<String, dynamic> json) => _$DictionaryComponentResponseOfuint32AndDestinyVendorComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyVendorComponentToJson(this);
}
