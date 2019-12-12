import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_progression_component.dart';

part 'single_component_response_of_destiny_character_progression_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterProgressionComponent{
	
	SingleComponentResponseOfDestinyCharacterProgressionComponent();

	factory SingleComponentResponseOfDestinyCharacterProgressionComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCharacterProgressionComponentFromJson(json);

	/// This component returns anything that could be considered &quot;Progression&quot; on a user: data where the user is gaining levels, reputation, completions, rewards, etc...
	@JsonKey(name:'data')
	DestinyCharacterProgressionComponent data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterProgressionComponentToJson(this);
}