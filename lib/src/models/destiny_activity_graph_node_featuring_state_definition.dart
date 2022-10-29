import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/activity_graph_node_highlight_type.dart';

part 'destiny_activity_graph_node_featuring_state_definition.g.dart';

/// Nodes can have different visual states. This object represents a single visual state (&quot;highlight type&quot;) that a node can be in, and the unlock expression condition to determine whether it should be set.
@JsonSerializable()
class DestinyActivityGraphNodeFeaturingStateDefinition{	
	DestinyActivityGraphNodeFeaturingStateDefinition();

	
	/// The node can be highlighted in a variety of ways - the game iterates through these and finds the first FeaturingState that is valid at the present moment given the Game, Account, and Character state, and renders the node in that state. See the ActivityGraphNodeHighlightType enum for possible values.
	@JsonKey(name:'highlightType',fromJson:decodeActivityGraphNodeHighlightType,toJson:encodeActivityGraphNodeHighlightType)
	ActivityGraphNodeHighlightType? highlightType;

	factory DestinyActivityGraphNodeFeaturingStateDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityGraphNodeFeaturingStateDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphNodeFeaturingStateDefinitionToJson(this);

	static Future<DestinyActivityGraphNodeFeaturingStateDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityGraphNodeFeaturingStateDefinition>((json)=>DestinyActivityGraphNodeFeaturingStateDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}