import 'destiny_character_activities_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_character_activities_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterActivitiesComponent {

	/// This component holds activity data for a character. It will tell you about the character&#39;s current activity status, as well as activities that are available to the user.
	@JsonKey(name:'data')
	DestinyCharacterActivitiesComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyCharacterActivitiesComponent();

	factory SingleComponentResponseOfDestinyCharacterActivitiesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCharacterActivitiesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterActivitiesComponentToJson(this);
}
