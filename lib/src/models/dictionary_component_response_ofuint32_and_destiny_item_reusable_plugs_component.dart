import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_reusable_plugs_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofuint32_and_destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent{
	
	DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent();

	factory DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponentFromJson(json);
	}

	@JsonKey(name:'data')
	Map<String, DestinyItemReusablePlugsComponent>? data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponentToJson(this);
}