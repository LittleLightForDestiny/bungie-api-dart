import 'destiny_display_properties_definition.dart';
import 'destiny_position_definition.dart';
import 'destiny_activity_graph_node_featuring_state_definition.dart';
import 'destiny_activity_graph_node_activity_definition.dart';
import 'destiny_activity_graph_node_state_entry.dart';

/** This is the position and other data related to nodes in the activity graph that you can click to launch activities. An Activity Graph node will only have one active Activity at a time, which will determine the activity to be launched (and, unless overrideDisplay information is provided, will also determine the tooltip and other UI related to the node) */
class DestinyActivityGraphNodeDefinition{
	
	/** An identifier for the Activity Graph Node, only guaranteed to be unique within its parent Activity Graph. */
	int nodeId;
	
	/** The node *may* have display properties that override the active Activity's display properties. */
	DestinyDisplayPropertiesDefinition overrideDisplay;
	
	/** The position on the map for this node. */
	DestinyPositionDefinition position;
	
	/** The node may have various visual accents placed on it, or styles applied. These are the list of possible styles that the Node can have. The game iterates through each, looking for the first one that passes a check of the required game/character/account state in order to show that style, and then renders the node in that style. */
	List<DestinyActivityGraphNodeFeaturingStateDefinition> featuringStates;
	
	/** The node may have various possible activities that could be active for it, however only one may be active at a time. See the DestinyActivityGraphNodeActivityDefinition for details. */
	List<DestinyActivityGraphNodeActivityDefinition> activities;
	
	/** Represents possible states that the graph node can be in. These are combined with some checking that happens in the game client and server to determine which state is actually active at any given time. */
	List<DestinyActivityGraphNodeStateEntry> states;
	DestinyActivityGraphNodeDefinition(
		this.nodeId,
		this.overrideDisplay,
		this.position,
		this.featuringStates,
		this.activities,
		this.states,
	);

	static DestinyActivityGraphNodeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphNodeDefinition(
				data['nodeId'],
				data['overrideDisplay'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['overrideDisplay']) : null,
				data['position'] != null ? DestinyPositionDefinition.fromMap(data['position']) : null,
				data['featuringStates'] != null ? DestinyActivityGraphNodeFeaturingStateDefinition.fromList(data['featuringStates']) : null,
				data['activities'] != null ? DestinyActivityGraphNodeActivityDefinition.fromList(data['activities']) : null,
				data['states'] != null ? DestinyActivityGraphNodeStateEntry.fromList(data['states']) : null,
		);
	}

	static List<DestinyActivityGraphNodeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphNodeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphNodeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['nodeId'] = this.nodeId;
			data['overrideDisplay'] = this.overrideDisplay != null? this.overrideDisplay.toMap() : null;
			data['position'] = this.position != null? this.position.toMap() : null;
			data['featuringStates'] = this.featuringStates != null? this.featuringStates.map((item)=>item.toMap()).toList() : null;
			data['activities'] = this.activities != null? this.activities.map((item)=>item.toMap()).toList() : null;
			data['states'] = this.states != null? this.states.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}