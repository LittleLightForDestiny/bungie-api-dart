import 'package:json_annotation/json_annotation.dart';

import 'destiny_kiosks_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_kiosks_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyKiosksComponent{
	
	DictionaryComponentResponseOfint64AndDestinyKiosksComponent();

	factory DictionaryComponentResponseOfint64AndDestinyKiosksComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyKiosksComponentFromJson(json);
	}

	@JsonKey(name:'data')
	Map<String, DestinyKiosksComponent>? data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyKiosksComponentToJson(this);
}