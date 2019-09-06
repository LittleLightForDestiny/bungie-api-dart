
import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_graph_display_progression_definition.g.dart';

/// When a Graph needs to show active Progressions, this defines those objectives as well as an identifier.
@JsonSerializable()
class DestinyActivityGraphDisplayProgressionDefinition {

	@JsonKey(name:'id')
	int id;

	@JsonKey(name:'progressionHash')
	int progressionHash;
	DestinyActivityGraphDisplayProgressionDefinition();

	factory DestinyActivityGraphDisplayProgressionDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityGraphDisplayProgressionDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphDisplayProgressionDefinitionToJson(this);
}
