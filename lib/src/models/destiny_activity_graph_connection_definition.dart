import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_graph_connection_definition.g.dart';

/// Nodes on a graph can be visually connected: this appears to be the information about which nodes to link. It appears to lack more detailed information, such as the path for that linking.
@JsonSerializable()
class DestinyActivityGraphConnectionDefinition{	
	DestinyActivityGraphConnectionDefinition();

	
	@JsonKey(name:'sourceNodeHash')
	int? sourceNodeHash;
	
	@JsonKey(name:'destNodeHash')
	int? destNodeHash;

	factory DestinyActivityGraphConnectionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityGraphConnectionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphConnectionDefinitionToJson(this);

	static Future<DestinyActivityGraphConnectionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityGraphConnectionDefinition>((json)=>DestinyActivityGraphConnectionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}