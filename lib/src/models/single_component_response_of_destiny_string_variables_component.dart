import 'package:json_annotation/json_annotation.dart';

import 'destiny_string_variables_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_string_variables_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyStringVariablesComponent{	
	SingleComponentResponseOfDestinyStringVariablesComponent();

	factory SingleComponentResponseOfDestinyStringVariablesComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyStringVariablesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyStringVariablesComponentToJson(this);
	
	@JsonKey(name:'data')
	DestinyStringVariablesComponent? data;
	
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}