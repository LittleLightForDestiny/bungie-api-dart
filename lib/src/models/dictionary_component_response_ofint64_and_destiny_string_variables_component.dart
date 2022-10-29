import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_string_variables_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_string_variables_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyStringVariablesComponent{	
	DictionaryComponentResponseOfint64AndDestinyStringVariablesComponent();

	
	@JsonKey(name:'data')
	Map<String, DestinyStringVariablesComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory DictionaryComponentResponseOfint64AndDestinyStringVariablesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyStringVariablesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyStringVariablesComponentToJson(this);

	static Future<DictionaryComponentResponseOfint64AndDestinyStringVariablesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DictionaryComponentResponseOfint64AndDestinyStringVariablesComponent>((json)=>DictionaryComponentResponseOfint64AndDestinyStringVariablesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}