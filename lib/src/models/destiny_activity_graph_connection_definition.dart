
import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_graph_connection_definition.g.dart';

/// Nodes on a graph can be visually connected: this appears to be the information about which nodes to link. It appears to lack more detailed information, such as the path for that linking.
@JsonSerializable()
class DestinyActivityGraphConnectionDefinition {

	@JsonKey(name:'sourceNodeHash')
	int sourceNodeHash;

	@JsonKey(name:'destNodeHash')
	int destNodeHash;
	DestinyActivityGraphConnectionDefinition();

	factory DestinyActivityGraphConnectionDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityGraphConnectionDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphConnectionDefinitionToJson(this);
}
