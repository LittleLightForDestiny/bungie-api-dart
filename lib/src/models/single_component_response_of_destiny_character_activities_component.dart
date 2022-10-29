import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_character_activities_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_character_activities_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCharacterActivitiesComponent{	
	SingleComponentResponseOfDestinyCharacterActivitiesComponent();

	
	/// This component holds activity data for a character. It will tell you about the character's current activity status, as well as activities that are available to the user.
	@JsonKey(name:'data')
	DestinyCharacterActivitiesComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyCharacterActivitiesComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyCharacterActivitiesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCharacterActivitiesComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyCharacterActivitiesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyCharacterActivitiesComponent>((json)=>SingleComponentResponseOfDestinyCharacterActivitiesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}