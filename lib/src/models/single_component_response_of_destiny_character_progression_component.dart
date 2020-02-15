import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_progression_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_character_progression_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterProgressionComponent{
	
	SingleComponentResponseOfDestinyCharacterProgressionComponent();

	factory SingleComponentResponseOfDestinyCharacterProgressionComponent.fromJson(Map<String, dynamic> json) {
		try{
			return _$SingleComponentResponseOfDestinyCharacterProgressionComponentFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// This component returns anything that could be considered "Progression" on a user: data where the user is gaining levels, reputation, completions, rewards, etc...
	@JsonKey(name:'data')
	DestinyCharacterProgressionComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.ProtectedInvalidEnumValue)
	ComponentPrivacySetting privacy;
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool disabled;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterProgressionComponentToJson(this);
}