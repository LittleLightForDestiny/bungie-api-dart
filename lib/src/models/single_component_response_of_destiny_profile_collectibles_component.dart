import 'package:json_annotation/json_annotation.dart';

import 'destiny_profile_collectibles_component.dart';

part 'single_component_response_of_destiny_profile_collectibles_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileCollectiblesComponent{
	
	SingleComponentResponseOfDestinyProfileCollectiblesComponent();

	factory SingleComponentResponseOfDestinyProfileCollectiblesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyProfileCollectiblesComponentFromJson(json);

	@JsonKey(name:'data')
	DestinyProfileCollectiblesComponent data;
	@JsonKey(name:'privacy')
	int privacy;

	
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileCollectiblesComponentToJson(this);
}