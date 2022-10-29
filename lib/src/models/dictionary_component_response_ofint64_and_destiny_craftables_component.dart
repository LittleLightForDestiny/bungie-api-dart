import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_craftables_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_craftables_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCraftablesComponent{	
	DictionaryComponentResponseOfint64AndDestinyCraftablesComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyCraftablesComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyCraftablesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyCraftablesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCraftablesComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyCraftablesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyCraftablesComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyCraftablesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}