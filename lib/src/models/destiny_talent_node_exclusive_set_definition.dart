import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_talent_node_exclusive_set_definition.g.dart';

/// The list of indexes into the Talent Grid&#39;s &quot;nodes&quot; property for nodes in this exclusive set. (See DestinyTalentNodeDefinition.nodeIndex)
@JsonSerializable()
class DestinyTalentNodeExclusiveSetDefinition{	
	DestinyTalentNodeExclusiveSetDefinition();

	
	/// The list of node indexes for the exclusive set. Historically, these were indexes. I would have liked to replace this with nodeHashes for consistency, but it's way too late for that. (9:09 PM, he's right!)
	@JsonKey(name:'nodeIndexes')
	List<int>? nodeIndexes;

	factory DestinyTalentNodeExclusiveSetDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyTalentNodeExclusiveSetDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyTalentNodeExclusiveSetDefinitionToJson(this);

	static Future<DestinyTalentNodeExclusiveSetDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyTalentNodeExclusiveSetDefinition>((json)=>DestinyTalentNodeExclusiveSetDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}