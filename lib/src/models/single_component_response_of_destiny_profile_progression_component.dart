import 'package:json_annotation/json_annotation.dart';

import 'destiny_profile_progression_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_profile_progression_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileProgressionComponent{
	
	SingleComponentResponseOfDestinyProfileProgressionComponent();

	factory SingleComponentResponseOfDestinyProfileProgressionComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyProfileProgressionComponentFromJson(json);

	/// The set of progression-related information that applies at a Profile-wide level for your Destiny experience. This differs from the Jimi Hendrix Experience because there's less guitars on fire. Yet. #spoileralert?
	/// This will include information such as Checklist info.
	@JsonKey(name:'data')
	DestinyProfileProgressionComponent data;
	@JsonKey(name:'privacy',unknownEnumValue:ComponentPrivacySetting.None)
	ComponentPrivacySetting privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileProgressionComponentToJson(this);
}