import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_string_variables_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_string_variables_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyStringVariablesComponent{	
	SingleComponentResponseOfDestinyStringVariablesComponent();

	
	@JsonKey(name:'data')
	DestinyStringVariablesComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyStringVariablesComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyStringVariablesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyStringVariablesComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyStringVariablesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyStringVariablesComponent>((json)=>SingleComponentResponseOfDestinyStringVariablesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}