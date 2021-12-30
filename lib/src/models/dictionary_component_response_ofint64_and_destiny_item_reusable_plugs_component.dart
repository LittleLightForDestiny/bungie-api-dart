import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_reusable_plugs_component.dart';
import '../enums/component_privacy_setting.dart';

part 'dictionary_component_response_ofint64_and_destiny_item_reusable_plugs_component.g.dart';

@JsonSerializable()
class DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent{	
	DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent();

	factory DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent.fromJson(Map<String, dynamic> json) {
		return _$DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponentToJson(this);
	
	@JsonKey(name:'data')
	Map<String, DestinyItemReusablePlugsComponent>? data;
	
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}