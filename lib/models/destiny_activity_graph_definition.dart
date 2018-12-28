import 'destiny_activity_graph_node_definition.dart';
import 'destiny_activity_graph_art_element_definition.dart';
import 'destiny_activity_graph_connection_definition.dart';
import 'destiny_activity_graph_display_objective_definition.dart';
import 'destiny_activity_graph_display_progression_definition.dart';
import 'destiny_linked_graph_definition.dart';

/* Represents a Map View in the director: be them overview views, destination views, or other.
They have nodes which map to activities, and other various visual elements that we (or others) may or may not be able to use.
Activity graphs, most importantly, have nodes which can have activities in various states of playability.
Unfortunately, activity graphs are combined at runtime with Game UI-only assets such as fragments of map images, various in-game special effects, decals etc... that we don't get in these definitions.
If we end up having time, we may end up trying to manually populate those here: but the last time we tried that, before the lead-up to D1, it proved to be unmaintainable as the game's content changed. So don't bet the farm on us providing that content in this definition. */
class DestinyActivityGraphDefinition{
	
	/* These represent the visual "nodes" on the map's view. These are the activities you can click on in the map. */
	List<DestinyActivityGraphNodeDefinition> nodes;
	
	/* Represents one-off/special UI elements that appear on the map. */
	List<DestinyActivityGraphArtElementDefinition> artElements;
	
	/* Represents connections between graph nodes. However, it lacks context that we'd need to make good use of it. */
	List<DestinyActivityGraphConnectionDefinition> connections;
	
	/* Objectives can display on maps, and this is supposedly metadata for that. I have not had the time to analyze the details of what is useful within however: we could be missing important data to make this work. Expect this property to be expanded on later if possible. */
	List<DestinyActivityGraphDisplayObjectiveDefinition> displayObjectives;
	
	/* Progressions can also display on maps, but similarly to displayObjectives we appear to lack some required information and context right now. We will have to look into it later and add more data if possible. */
	List<DestinyActivityGraphDisplayProgressionDefinition> displayProgressions;
	
	/* Represents links between this Activity Graph and other ones. */
	List<DestinyLinkedGraphDefinition> linkedGraphs;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyActivityGraphDefinition(
		this.nodes,
		this.artElements,
		this.connections,
		this.displayObjectives,
		this.displayProgressions,
		this.linkedGraphs,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyActivityGraphDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphDefinition(
				data['nodes'] != null ? DestinyActivityGraphNodeDefinition.fromList(data['nodes']) : null,
				data['artElements'] != null ? DestinyActivityGraphArtElementDefinition.fromList(data['artElements']) : null,
				data['connections'] != null ? DestinyActivityGraphConnectionDefinition.fromList(data['connections']) : null,
				data['displayObjectives'] != null ? DestinyActivityGraphDisplayObjectiveDefinition.fromList(data['displayObjectives']) : null,
				data['displayProgressions'] != null ? DestinyActivityGraphDisplayProgressionDefinition.fromList(data['displayProgressions']) : null,
				data['linkedGraphs'] != null ? DestinyLinkedGraphDefinition.fromList(data['linkedGraphs']) : null,
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
			data['nodes'] = this.nodes.map((item)=>item.toMap()).toList();
			data['artElements'] = this.artElements.map((item)=>item.toMap()).toList();
			data['connections'] = this.connections.map((item)=>item.toMap()).toList();
			data['displayObjectives'] = this.displayObjectives.map((item)=>item.toMap()).toList();
			data['displayProgressions'] = this.displayProgressions.map((item)=>item.toMap()).toList();
			data['linkedGraphs'] = this.linkedGraphs.map((item)=>item.toMap()).toList();
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}