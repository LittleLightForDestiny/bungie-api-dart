import 'destiny_profile_progression_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_profile_progression_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileProgressionComponent {

	/// The set of progression-related information that applies at a Profile-wide level for your Destiny experience. This differs from the Jimi Hendrix Experience because there&#39;s less guitars on fire. Yet. #spoileralert?
	/// This will include information such as Checklist info.
	@JsonKey(name:'data')
	DestinyProfileProgressionComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyProfileProgressionComponent();

	factory SingleComponentResponseOfDestinyProfileProgressionComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyProfileProgressionComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileProgressionComponentToJson(this);
}
