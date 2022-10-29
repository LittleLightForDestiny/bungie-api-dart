import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_graph_display_progression_definition.g.dart';

/// When a Graph needs to show active Progressions, this defines those objectives as well as an identifier.
@JsonSerializable()
class DestinyActivityGraphDisplayProgressionDefinition{	
	DestinyActivityGraphDisplayProgressionDefinition();

	
	@JsonKey(name:'id')
	int? id;
	
	@JsonKey(name:'progressionHash')
	int? progressionHash;

	factory DestinyActivityGraphDisplayProgressionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityGraphDisplayProgressionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphDisplayProgressionDefinitionToJson(this);

	static Future<DestinyActivityGraphDisplayProgressionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityGraphDisplayProgressionDefinition>((json)=>DestinyActivityGraphDisplayProgressionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}