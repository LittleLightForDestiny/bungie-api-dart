import 'destiny_presentation_nodes_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_presentation_nodes_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyPresentationNodesComponent {

	@JsonKey(name:'data')
	DestinyPresentationNodesComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyPresentationNodesComponent();

	factory SingleComponentResponseOfDestinyPresentationNodesComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyPresentationNodesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyPresentationNodesComponentToJson(this);
}
