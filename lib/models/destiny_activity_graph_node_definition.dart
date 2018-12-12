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
		int this.nodeId,
		DestinyDisplayPropertiesDefinition this.overrideDisplay,
		DestinyPositionDefinition this.position,
		List<DestinyActivityGraphNodeFeaturingStateDefinition> this.featuringStates,
		List<DestinyActivityGraphNodeActivityDefinition> this.activities,
		List<DestinyActivityGraphNodeStateEntry> this.states,
	);

	static DestinyActivityGraphNodeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphNodeDefinition(
				data['nodeId'],
				data['overrideDisplay'],
				data['position'],
				DestinyActivityGraphNodeFeaturingStateDefinition.fromList(data['featuringStates']),
				DestinyActivityGraphNodeActivityDefinition.fromList(data['activities']),
				DestinyActivityGraphNodeStateEntry.fromList(data['states']),
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
			data['featuringStates'] = this.featuringStates.map((item)=>item.toMap());
			data['activities'] = this.activities.map((item)=>item.toMap());
			data['states'] = this.states.map((item)=>item.toMap());
		return data;
	}
}