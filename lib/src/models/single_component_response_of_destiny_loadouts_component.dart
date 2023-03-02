import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_loadouts_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_loadouts_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyLoadoutsComponent{	
	SingleComponentResponseOfDestinyLoadoutsComponent();

	
	@JsonKey(name:'data')
	DestinyLoadoutsComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyLoadoutsComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyLoadoutsComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyLoadoutsComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyLoadoutsComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyLoadoutsComponent>((json)=>SingleComponentResponseOfDestinyLoadoutsComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}