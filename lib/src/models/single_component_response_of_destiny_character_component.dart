import 'destiny_character_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_character_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterComponent {

	/// This component contains base properties of the character. You&#39;ll probably want to always request this component, but hey you do you.
	@JsonKey(name:'data')
	DestinyCharacterComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyCharacterComponent();

	factory SingleComponentResponseOfDestinyCharacterComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCharacterComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterComponentToJson(this);
}
