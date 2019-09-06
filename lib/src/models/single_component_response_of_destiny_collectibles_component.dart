import 'destiny_collectibles_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_collectibles_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyCollectiblesComponent {

	@JsonKey(name:'data')
	DestinyCollectiblesComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyCollectiblesComponent();

	factory SingleComponentResponseOfDestinyCollectiblesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyCollectiblesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyCollectiblesComponentToJson(this);
}
