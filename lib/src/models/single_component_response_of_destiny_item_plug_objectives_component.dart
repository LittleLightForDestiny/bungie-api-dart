import 'destiny_item_plug_objectives_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_item_plug_objectives_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemPlugObjectivesComponent{
	
	@JsonKey(name:'data')
	DestinyItemPlugObjectivesComponent data;
	
	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyItemPlugObjectivesComponent();

	factory SingleComponentResponseOfDestinyItemPlugObjectivesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemPlugObjectivesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemPlugObjectivesComponentToJson(this);
}