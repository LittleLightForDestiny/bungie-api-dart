import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_profile_progression_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_profile_progression_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileProgressionComponent{	
	SingleComponentResponseOfDestinyProfileProgressionComponent();

	
	/// The set of progression-related information that applies at a Profile-wide level for your Destiny experience. This differs from the Jimi Hendrix Experience because there's less guitars on fire. Yet. #spoileralert?
	/// This will include information such as Checklist info.
	@JsonKey(name:'data')
	DestinyProfileProgressionComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyProfileProgressionComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyProfileProgressionComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileProgressionComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyProfileProgressionComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyProfileProgressionComponent>((json)=>SingleComponentResponseOfDestinyProfileProgressionComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}