import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_character_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_character_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterComponent{	
	SingleComponentResponseOfDestinyCharacterComponent();

	
	/// This component contains base properties of the character. You'll probably want to always request this component, but hey you do you.
	@JsonKey(name:'data')
	DestinyCharacterComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyCharacterComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyCharacterComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyCharacterComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyCharacterComponent>((json)=>SingleComponentResponseOfDestinyCharacterComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}