import 'package:json_annotation/json_annotation.dart';

import 'destiny_craftables_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_craftables_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyCraftablesComponent{	
	DictionaryComponentResponseOfint64AndDestinyCraftablesComponent();

	factory DictionaryComponentResponseOfint64AndDestinyCraftablesComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyCraftablesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyCraftablesComponentToJson(this);
	
	@JsonKey(name:'data')
	Map<String, DestinyCraftablesComponent>? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}