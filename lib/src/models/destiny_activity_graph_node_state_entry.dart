
import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_graph_node_state_entry.g.dart';

/// Represents a single state that a graph node might end up in. Depending on what&#39;s going on in the game, graph nodes could be shown in different ways or even excluded from view entirely.
@JsonSerializable()
class DestinyActivityGraphNodeStateEntry {

	@JsonKey(name:'state')
	int state;
	DestinyActivityGraphNodeStateEntry();

	factory DestinyActivityGraphNodeStateEntry.fromJson(Map<String, dynamic> json) => _$DestinyActivityGraphNodeStateEntryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphNodeStateEntryToJson(this);
}
