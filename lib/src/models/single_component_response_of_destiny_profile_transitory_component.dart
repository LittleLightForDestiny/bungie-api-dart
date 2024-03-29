import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_profile_transitory_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_profile_transitory_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileTransitoryComponent{	
	SingleComponentResponseOfDestinyProfileTransitoryComponent();

	
	/// This is an experimental set of data that Bungie considers to be "transitory" - information that may be useful for API users, but that is coming from a non-authoritative data source about information that could potentially change at a more frequent pace than Bungie.net will receive updates about it.
	/// This information is provided exclusively for convenience should any of it be useful to users: we provide no guarantees to the accuracy or timeliness of data that comes from this source. Know that this data can potentially be out-of-date or even wrong entirely if the user disconnected from the game or suddenly changed their status before we can receive refreshed data.
	@JsonKey(name:'data')
	DestinyProfileTransitoryComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyProfileTransitoryComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyProfileTransitoryComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileTransitoryComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyProfileTransitoryComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyProfileTransitoryComponent>((json)=>SingleComponentResponseOfDestinyProfileTransitoryComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}