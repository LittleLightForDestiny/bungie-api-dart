import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_graph_display_objective_definition.g.dart';

/// When a Graph needs to show active Objectives, this defines those objectives as well as an identifier.
@JsonSerializable()
class DestinyActivityGraphDisplayObjectiveDefinition{	
	DestinyActivityGraphDisplayObjectiveDefinition();

	
	/// $NOTE $amola 2017-01-19 This field is apparently something that CUI uses to manually wire up objectives to display info. I am unsure how it works.
	@JsonKey(name:'id')
	int? id;
	
	/// The objective being shown on the map.
	@JsonKey(name:'objectiveHash')
	int? objectiveHash;

	factory DestinyActivityGraphDisplayObjectiveDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityGraphDisplayObjectiveDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphDisplayObjectiveDefinitionToJson(this);

	static Future<DestinyActivityGraphDisplayObjectiveDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityGraphDisplayObjectiveDefinition>((json)=>DestinyActivityGraphDisplayObjectiveDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}