import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_currencies_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_currencies_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent{	
	DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyCurrenciesComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyCurrenciesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCurrenciesComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}