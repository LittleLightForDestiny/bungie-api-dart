import 'package:json_annotation/json_annotation.dart';

import 'destiny_plug_sets_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_plug_sets_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent{
	
	DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent();

	factory DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyPlugSetsComponentFromJson(json);
	}

	@JsonKey(name:'data')
	Map<String, DestinyPlugSetsComponent>? data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyPlugSetsComponentToJson(this);
}