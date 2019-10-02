import 'destiny_platform_silver_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_platform_silver_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyPlatformSilverComponent{
	
	@JsonKey(name:'data')
	DestinyPlatformSilverComponent data;
	
	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyPlatformSilverComponent();

	factory SingleComponentResponseOfDestinyPlatformSilverComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyPlatformSilverComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyPlatformSilverComponentToJson(this);
}