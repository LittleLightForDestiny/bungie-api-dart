import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_presentation_node_type.dart';

part 'destiny_scored_presentation_node_base_definition.g.dart';

@JsonSerializable()
class DestinyScoredPresentationNodeBaseDefinition{	
	DestinyScoredPresentationNodeBaseDefinition();

	
	@JsonKey(name:'maxCategoryRecordScore')
	int? maxCategoryRecordScore;
	
	@JsonKey(name:'presentationNodeType',fromJson:decodeDestinyPresentationNodeType,toJson:encodeDestinyPresentationNodeType)
	DestinyPresentationNodeType? presentationNodeType;
	
	@JsonKey(name:'traitIds')
	List<String>? traitIds;
	
	@JsonKey(name:'traitHashes')
	List<int>? traitHashes;
	
	/// A quick reference to presentation nodes that have this node as a child. Presentation nodes can be parented under multiple parents.
	@JsonKey(name:'parentNodeHashes')
	List<int>? parentNodeHashes;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	factory DestinyScoredPresentationNodeBaseDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyScoredPresentationNodeBaseDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyScoredPresentationNodeBaseDefinitionToJson(this);

	static Future<DestinyScoredPresentationNodeBaseDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyScoredPresentationNodeBaseDefinition>((json)=>DestinyScoredPresentationNodeBaseDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}