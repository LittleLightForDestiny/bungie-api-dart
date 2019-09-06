import 'destiny_display_properties_definition.dart';
import 'destiny_position_definition.dart';
import 'destiny_activity_graph_node_featuring_state_definition.dart';
import 'destiny_activity_graph_node_activity_definition.dart';
import 'destiny_activity_graph_node_state_entry.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_graph_node_definition.g.dart';

/// This is the position and other data related to nodes in the activity graph that you can click to launch activities. An Activity Graph node will only have one active Activity at a time, which will determine the activity to be launched (and, unless overrideDisplay information is provided, will also determine the tooltip and other UI related to the node)
@JsonSerializable()
class DestinyActivityGraphNodeDefinition {

	/// An identifier for the Activity Graph Node, only guaranteed to be unique within its parent Activity Graph.
	@JsonKey(name:'nodeId')
	int nodeId;

	/// The node *may* have display properties that override the active Activity&#39;s display properties.
	@JsonKey(name:'overrideDisplay')
	DestinyDisplayPropertiesDefinition overrideDisplay;

	/// The position on the map for this node.
	@JsonKey(name:'position')
	DestinyPositionDefinition position;

	/// The node may have various visual accents placed on it, or styles applied. These are the list of possible styles that the Node can have. The game iterates through each, looking for the first one that passes a check of the required game&#x2F;character&#x2F;account state in order to show that style, and then renders the node in that style.
	@JsonKey(name:'featuringStates')
	List<DestinyActivityGraphNodeFeaturingStateDefinition> featuringStates;

	/// The node may have various possible activities that could be active for it, however only one may be active at a time. See the DestinyActivityGraphNodeActivityDefinition for details.
	@JsonKey(name:'activities')
	List<DestinyActivityGraphNodeActivityDefinition> activities;

	/// Represents possible states that the graph node can be in. These are combined with some checking that happens in the game client and server to determine which state is actually active at any given time.
	@JsonKey(name:'states')
	List<DestinyActivityGraphNodeStateEntry> states;
	DestinyActivityGraphNodeDefinition();

	factory DestinyActivityGraphNodeDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityGraphNodeDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphNodeDefinitionToJson(this);
}
