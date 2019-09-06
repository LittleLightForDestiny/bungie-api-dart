import 'destiny_activity_graph_node_definition.dart';
import 'destiny_activity_graph_art_element_definition.dart';
import 'destiny_activity_graph_connection_definition.dart';
import 'destiny_activity_graph_display_objective_definition.dart';
import 'destiny_activity_graph_display_progression_definition.dart';
import 'destiny_linked_graph_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_graph_definition.g.dart';

/// Represents a Map View in the director: be them overview views, destination views, or other.
/// They have nodes which map to activities, and other various visual elements that we (or others) may or may not be able to use.
/// Activity graphs, most importantly, have nodes which can have activities in various states of playability.
/// Unfortunately, activity graphs are combined at runtime with Game UI-only assets such as fragments of map images, various in-game special effects, decals etc... that we don&#39;t get in these definitions.
/// If we end up having time, we may end up trying to manually populate those here: but the last time we tried that, before the lead-up to D1, it proved to be unmaintainable as the game&#39;s content changed. So don&#39;t bet the farm on us providing that content in this definition.
@JsonSerializable()
class DestinyActivityGraphDefinition {

	/// These represent the visual &quot;nodes&quot; on the map&#39;s view. These are the activities you can click on in the map.
	@JsonKey(name:'nodes')
	List<DestinyActivityGraphNodeDefinition> nodes;

	/// Represents one-off&#x2F;special UI elements that appear on the map.
	@JsonKey(name:'artElements')
	List<DestinyActivityGraphArtElementDefinition> artElements;

	/// Represents connections between graph nodes. However, it lacks context that we&#39;d need to make good use of it.
	@JsonKey(name:'connections')
	List<DestinyActivityGraphConnectionDefinition> connections;

	/// Objectives can display on maps, and this is supposedly metadata for that. I have not had the time to analyze the details of what is useful within however: we could be missing important data to make this work. Expect this property to be expanded on later if possible.
	@JsonKey(name:'displayObjectives')
	List<DestinyActivityGraphDisplayObjectiveDefinition> displayObjectives;

	/// Progressions can also display on maps, but similarly to displayObjectives we appear to lack some required information and context right now. We will have to look into it later and add more data if possible.
	@JsonKey(name:'displayProgressions')
	List<DestinyActivityGraphDisplayProgressionDefinition> displayProgressions;

	/// Represents links between this Activity Graph and other ones.
	@JsonKey(name:'linkedGraphs')
	List<DestinyLinkedGraphDefinition> linkedGraphs;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyActivityGraphDefinition();

	factory DestinyActivityGraphDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityGraphDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphDefinitionToJson(this);
}
