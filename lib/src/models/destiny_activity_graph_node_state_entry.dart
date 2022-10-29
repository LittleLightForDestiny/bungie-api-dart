import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_graph_node_state.dart';

part 'destiny_activity_graph_node_state_entry.g.dart';

/// Represents a single state that a graph node might end up in. Depending on what&#39;s going on in the game, graph nodes could be shown in different ways or even excluded from view entirely.
@JsonSerializable()
class DestinyActivityGraphNodeStateEntry{	
	DestinyActivityGraphNodeStateEntry();

	
	@JsonKey(name:'state',fromJson:decodeDestinyGraphNodeState,toJson:encodeDestinyGraphNodeState)
	DestinyGraphNodeState? state;

	factory DestinyActivityGraphNodeStateEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityGraphNodeStateEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphNodeStateEntryToJson(this);

	static Future<DestinyActivityGraphNodeStateEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityGraphNodeStateEntry>((json)=>DestinyActivityGraphNodeStateEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}