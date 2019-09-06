import 'destiny_item_objectives_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_item_objectives_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemObjectivesComponent {

	/// Items can have objectives and progression. When you request this block, you will obtain information about any Objectives and progression tied to this item.
	@JsonKey(name:'data')
	DestinyItemObjectivesComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyItemObjectivesComponent();

	factory SingleComponentResponseOfDestinyItemObjectivesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemObjectivesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemObjectivesComponentToJson(this);
}
