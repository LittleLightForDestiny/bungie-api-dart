
import 'package:json_annotation/json_annotation.dart';
part 'destiny_talent_node_exclusive_set_definition.g.dart';

/** The list of indexes into the Talent Grid's "nodes" property for nodes in this exclusive set. (See DestinyTalentNodeDefinition.nodeIndex) */
@JsonSerializable()
class DestinyTalentNodeExclusiveSetDefinition{
	
	/** The list of node indexes for the exclusive set. Historically, these were indexes. I would have liked to replace this with nodeHashes for consistency, but it's way too late for that. (9:09 PM, he's right!) */
	@JsonKey(name:'nodeIndexes')
	List<int> nodeIndexes;
	DestinyTalentNodeExclusiveSetDefinition();

	factory DestinyTalentNodeExclusiveSetDefinition.fromJson(Map<String, dynamic> json) => _$DestinyTalentNodeExclusiveSetDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyTalentNodeExclusiveSetDefinitionToJson(this);
}