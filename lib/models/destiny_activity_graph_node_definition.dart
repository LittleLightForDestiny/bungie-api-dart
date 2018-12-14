import 'destiny_display_properties_definition.dart';
import 'destiny_position_definition.dart';
import 'destiny_activity_graph_node_featuring_state_definition.dart';
import 'destiny_activity_graph_node_activity_definition.dart';
import 'destiny_activity_graph_node_state_entry.dart';
class DestinyActivityGraphNodeDefinition{
	int nodeId;
	DestinyDisplayPropertiesDefinition overrideDisplay;
	DestinyPositionDefinition position;
	List<DestinyActivityGraphNodeFeaturingStateDefinition> featuringStates;
	List<DestinyActivityGraphNodeActivityDefinition> activities;
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
			data['overrideDisplay'] = this.overrideDisplay;
			data['position'] = this.position;
			data['featuringStates'] = this.featuringStates.map((item)=>item.toMap()).toList();
			data['activities'] = this.activities.map((item)=>item.toMap()).toList();
			data['states'] = this.states.map((item)=>item.toMap()).toList();
		return data;
	}
}