import 'destiny_activity_graph_node_definition.dart';
import 'destiny_activity_graph_art_element_definition.dart';
import 'destiny_activity_graph_connection_definition.dart';
import 'destiny_activity_graph_display_objective_definition.dart';
import 'destiny_activity_graph_display_progression_definition.dart';
import 'destiny_linked_graph_definition.dart';
class DestinyActivityGraphDefinition{
	List<DestinyActivityGraphNodeDefinition> nodes;
	List<DestinyActivityGraphArtElementDefinition> artElements;
	List<DestinyActivityGraphConnectionDefinition> connections;
	List<DestinyActivityGraphDisplayObjectiveDefinition> displayObjectives;
	List<DestinyActivityGraphDisplayProgressionDefinition> displayProgressions;
	List<DestinyLinkedGraphDefinition> linkedGraphs;
	int hash;
	int index;
	bool redacted;
	DestinyActivityGraphDefinition(
		List<DestinyActivityGraphNodeDefinition> this.nodes,
		List<DestinyActivityGraphArtElementDefinition> this.artElements,
		List<DestinyActivityGraphConnectionDefinition> this.connections,
		List<DestinyActivityGraphDisplayObjectiveDefinition> this.displayObjectives,
		List<DestinyActivityGraphDisplayProgressionDefinition> this.displayProgressions,
		List<DestinyLinkedGraphDefinition> this.linkedGraphs,
		int this.hash,
		int this.index,
		bool this.redacted,
	);

	static DestinyActivityGraphDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphDefinition(
				DestinyActivityGraphNodeDefinition.fromList(data['nodes']),
				DestinyActivityGraphArtElementDefinition.fromList(data['artElements']),
				DestinyActivityGraphConnectionDefinition.fromList(data['connections']),
				DestinyActivityGraphDisplayObjectiveDefinition.fromList(data['displayObjectives']),
				DestinyActivityGraphDisplayProgressionDefinition.fromList(data['displayProgressions']),
				DestinyLinkedGraphDefinition.fromList(data['linkedGraphs']),
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyActivityGraphDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['nodes'] = nodes.map((item)=>item.toMap());
			data['artElements'] = artElements.map((item)=>item.toMap());
			data['connections'] = connections.map((item)=>item.toMap());
			data['displayObjectives'] = displayObjectives.map((item)=>item.toMap());
			data['displayProgressions'] = displayProgressions.map((item)=>item.toMap());
			data['linkedGraphs'] = linkedGraphs.map((item)=>item.toMap());
			data['hash'] = hash;
			data['index'] = index;
			data['redacted'] = redacted;
	}
}