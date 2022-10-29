import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_character_progression_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_character_progression_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterProgressionComponent{	
	SingleComponentResponseOfDestinyCharacterProgressionComponent();

	
	/// This component returns anything that could be considered "Progression" on a user: data where the user is gaining levels, reputation, completions, rewards, etc...
	@JsonKey(name:'data')
	DestinyCharacterProgressionComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyCharacterProgressionComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyCharacterProgressionComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterProgressionComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyCharacterProgressionComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyCharacterProgressionComponent>((json)=>SingleComponentResponseOfDestinyCharacterProgressionComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}