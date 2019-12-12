import 'package:json_annotation/json_annotation.dart';

import 'destiny_platform_silver_component.dart';

part 'single_component_response_of_destiny_platform_silver_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyPlatformSilverComponent{
	
	SingleComponentResponseOfDestinyPlatformSilverComponent();

	factory SingleComponentResponseOfDestinyPlatformSilverComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyPlatformSilverComponentFromJson(json);

	@JsonKey(name:'data')
	DestinyPlatformSilverComponent data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyPlatformSilverComponentToJson(this);
}