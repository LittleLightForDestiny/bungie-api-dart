
import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_graph_display_objective_definition.g.dart';

/// When a Graph needs to show active Objectives, this defines those objectives as well as an identifier.
@JsonSerializable()
class DestinyActivityGraphDisplayObjectiveDefinition {

	/// $NOTE $amola 2017-01-19 This field is apparently something that CUI uses to manually wire up objectives to display info. I am unsure how it works.
	@JsonKey(name:'id')
	int id;

	/// The objective being shown on the map.
	@JsonKey(name:'objectiveHash')
	int objectiveHash;
	DestinyActivityGraphDisplayObjectiveDefinition();

	factory DestinyActivityGraphDisplayObjectiveDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityGraphDisplayObjectiveDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphDisplayObjectiveDefinitionToJson(this);
}
