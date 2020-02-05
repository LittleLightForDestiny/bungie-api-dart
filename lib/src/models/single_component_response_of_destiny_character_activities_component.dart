import 'package:json_annotation/json_annotation.dart';

import 'destiny_character_activities_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_character_activities_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterActivitiesComponent{
	
	SingleComponentResponseOfDestinyCharacterActivitiesComponent();

	factory SingleComponentResponseOfDestinyCharacterActivitiesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCharacterActivitiesComponentFromJson(json);

	/// This component holds activity data for a character. It will tell you about the character's current activity status, as well as activities that are available to the user.
	@JsonKey(name:'data')
	DestinyCharacterActivitiesComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterActivitiesComponentToJson(this);
}