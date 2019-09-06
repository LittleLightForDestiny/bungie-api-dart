import 'destiny_profile_collectibles_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_profile_collectibles_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyProfileCollectiblesComponent {

	@JsonKey(name:'data')
	DestinyProfileCollectiblesComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyProfileCollectiblesComponent();

	factory SingleComponentResponseOfDestinyProfileCollectiblesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyProfileCollectiblesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyProfileCollectiblesComponentToJson(this);
}
