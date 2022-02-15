import 'package:json_annotation/json_annotation.dart';

import 'destiny_platform_silver_component.dart';
import '../enums/component_privacy_setting.dart';

part 'single_component_response_of_destiny_platform_silver_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyPlatformSilverComponent{	
	SingleComponentResponseOfDestinyPlatformSilverComponent();

	factory SingleComponentResponseOfDestinyPlatformSilverComponent.fromJson(Map<String, dynamic> json) {
		return _$SingleComponentResponseOfDestinyPlatformSilverComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyPlatformSilverComponentToJson(this);
	
	@JsonKey(name:'data')
	DestinyPlatformSilverComponent? data;
	
	@JsonKey(name:'privacy',fromJson:decodeComponentPrivacySetting,toJson:encodeComponentPrivacySetting)
	ComponentPrivacySetting? privacy;
	
	/// If true, this component is disabled.
	@JsonKey(name:'disabled')
	bool? disabled;
}