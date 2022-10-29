import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_graph_list_entry_definition.g.dart';

/// Destinations and Activities may have default Activity Graphs that should be shown when you bring up the Director and are playing in either.
/// This contract defines the graph referred to and the gating for when it is relevant.
@JsonSerializable()
class DestinyActivityGraphListEntryDefinition{	
	DestinyActivityGraphListEntryDefinition();

	
	/// The hash identifier of the DestinyActivityGraphDefinition that should be shown when opening the director.
	@JsonKey(name:'activityGraphHash')
	int? activityGraphHash;

	factory DestinyActivityGraphListEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityGraphListEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphListEntryDefinitionToJson(this);

	static Future<DestinyActivityGraphListEntryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityGraphListEntryDefinition>((json)=>DestinyActivityGraphListEntryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}