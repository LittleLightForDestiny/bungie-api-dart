import 'destiny_presentation_node_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_presentation_nodes_component.g.dart';

@JsonSerializable()
class DestinyPresentationNodesComponent {

	@JsonKey(name:'nodes')
	Map<String, DestinyPresentationNodeComponent> nodes;
	DestinyPresentationNodesComponent();

	factory DestinyPresentationNodesComponent.fromJson(Map<String, dynamic> json) => _$DestinyPresentationNodesComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodesComponentToJson(this);
}
