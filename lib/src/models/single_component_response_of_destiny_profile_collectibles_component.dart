import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_profile_collectibles_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_profile_collectibles_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileCollectiblesComponent{	
	SingleComponentResponseOfDestinyProfileCollectiblesComponent();

	
	@JsonKey(name:'data')
	DestinyProfileCollectiblesComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyProfileCollectiblesComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyProfileCollectiblesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileCollectiblesComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyProfileCollectiblesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyProfileCollectiblesComponent>((json)=>SingleComponentResponseOfDestinyProfileCollectiblesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}