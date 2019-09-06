import 'destiny_character_progression_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_character_progression_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterProgressionComponent {

	/// This component returns anything that could be considered &quot;Progression&quot; on a user: data where the user is gaining levels, reputation, completions, rewards, etc...
	@JsonKey(name:'data')
	DestinyCharacterProgressionComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyCharacterProgressionComponent();

	factory SingleComponentResponseOfDestinyCharacterProgressionComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCharacterProgressionComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterProgressionComponentToJson(this);
}
