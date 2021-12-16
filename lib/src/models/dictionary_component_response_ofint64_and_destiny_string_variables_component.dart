import 'package:json_annotation/json_annotation.dart';

import 'destiny_string_variables_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_string_variables_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyStringVariablesComponent{
	
	DictionaryComponentResponseOfint64AndDestinyStringVariablesComponent();

	factory DictionaryComponentResponseOfint64AndDestinyStringVariablesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyStringVariablesComponentFromJson(json);
	}

	@JsonKey(name:'data')
	Map<String, DestinyStringVariablesComponent>? data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyStringVariablesComponentToJson(this);
}