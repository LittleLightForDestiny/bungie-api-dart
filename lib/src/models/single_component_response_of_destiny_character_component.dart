import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_character_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterComponent{	
	SingleComponentResponseOfDestinyCharacterComponent();

	factory SingleComponentResponseOfDestinyCharacterComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyCharacterComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterComponentToJson(this);
	
	/// This component contains base properties of the character. You'll probably want to always request this component, but hey you do you.
	@JsonKey(name:'data')
	DestinyCharacterComponent? data;
	
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}