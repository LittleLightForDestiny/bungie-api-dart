import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_profile_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_profile_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileComponent{	
	SingleComponentResponseOfDestinyProfileComponent();

	
	/// The most essential summary information about a Profile (in Destiny 1, we called these "Accounts").
	@JsonKey(name:'data')
	DestinyProfileComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyProfileComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyProfileComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyProfileComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyProfileComponent>((json)=>SingleComponentResponseOfDestinyProfileComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}