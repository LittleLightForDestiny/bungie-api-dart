import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_color.dart';

part 'destiny_social_commendation_node_definition.g.dart';

@JsonSerializable()
class DestinySocialCommendationNodeDefinition{	
	DestinySocialCommendationNodeDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// The color associated with this group of commendations.
	@JsonKey(name:'color')
	DestinyColor? color;
	
	@JsonKey(name:'parentCommendationNodeHash')
	int? parentCommendationNodeHash;
	
	/// A list of hashes that map to child commendation nodes. Only the root commendations node is expected to have child nodes.
	@JsonKey(name:'childCommendationNodeHashes')
	List<int>? childCommendationNodeHashes;
	
	/// A list of hashes that map to child commendations.
	@JsonKey(name:'childCommendationHashes')
	List<int>? childCommendationHashes;
	
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

	factory DestinySocialCommendationNodeDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinySocialCommendationNodeDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinySocialCommendationNodeDefinitionToJson(this);

	static Future<DestinySocialCommendationNodeDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinySocialCommendationNodeDefinition>((json)=>DestinySocialCommendationNodeDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}