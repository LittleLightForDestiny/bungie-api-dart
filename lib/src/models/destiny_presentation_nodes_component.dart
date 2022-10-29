import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_presentation_node_component.dart';

part 'destiny_presentation_nodes_component.g.dart';

@JsonSerializable()
class DestinyPresentationNodesComponent{	
	DestinyPresentationNodesComponent();

	
	@JsonKey(name:'nodes')
	Map<String, DestinyPresentationNodeComponent>? nodes;

	factory DestinyPresentationNodesComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodesComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodesComponentToJson(this);

	static Future<DestinyPresentationNodesComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPresentationNodesComponent>((json)=>DestinyPresentationNodesComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}