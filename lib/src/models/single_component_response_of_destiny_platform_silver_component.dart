import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_platform_silver_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_platform_silver_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyPlatformSilverComponent{	
	SingleComponentResponseOfDestinyPlatformSilverComponent();

	
	@JsonKey(name:'data')
	DestinyPlatformSilverComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;

	factory SingleComponentResponseOfDestinyPlatformSilverComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyPlatformSilverComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyPlatformSilverComponentToJson(this);

	static Future<SingleComponentResponseOfDestinyPlatformSilverComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, SingleComponentResponseOfDestinyPlatformSilverComponent>((json)=>SingleComponentResponseOfDestinyPlatformSilverComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}