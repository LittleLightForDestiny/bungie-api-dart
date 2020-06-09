import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_scope.dart';
import 'destiny_collectible_acquisition_block.dart';
import 'destiny_collectible_state_block.dart';
import 'destiny_presentation_child_block.dart';
import '../enums/destiny_presentation_node_type.dart';

part 'destiny_collectible_definition.g.dart';

/// Defines a
@JsonSerializable()
class DestinyCollectibleDefinition{
	
	DestinyCollectibleDefinition();

	factory DestinyCollectibleDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyCollectibleDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;
	/// Indicates whether the state of this Collectible is determined on a per-character or on an account-wide basis.
	@JsonKey(name:'scope',unknownEnumValue:DestinyScope.ProtectedInvalidEnumValue)
	DestinyScope scope;
	/// A human readable string for a hint about how to acquire the item.
	@JsonKey(name:'sourceString')
	String sourceString;
	/// This is a hash identifier we are building on the BNet side in an attempt to let people group collectibles by similar sources.
	/// I can't promise that it's going to be 100% accurate, but if the designers were consistent in assigning the same source strings to items with the same sources, it *ought to* be. No promises though.
	/// This hash also doesn't relate to an actual definition, just to note: we've got nothing useful other than the source string for this data.
	@JsonKey(name:'sourceHash')
	int sourceHash;
	@JsonKey(name:'itemHash')
	int itemHash;
	@JsonKey(name:'acquisitionInfo')
	DestinyCollectibleAcquisitionBlock acquisitionInfo;
	@JsonKey(name:'stateInfo')
	DestinyCollectibleStateBlock stateInfo;
	@JsonKey(name:'presentationInfo')
	DestinyPresentationChildBlock presentationInfo;
	@JsonKey(name:'presentationNodeType',unknownEnumValue:DestinyPresentationNodeType.ProtectedInvalidEnumValue)
	DestinyPresentationNodeType presentationNodeType;
	@JsonKey(name:'traitIds')
	List<String> traitIds;
	@JsonKey(name:'traitHashes')
	List<int> traitHashes;
	/// A quick reference to presentation nodes that have this node as a child. Presentation nodes can be parented under multiple parents.
	@JsonKey(name:'parentNodeHashes')
	List<int> parentNodeHashes;
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;

	
	
	Map<String, dynamic> toJson() => _$DestinyCollectibleDefinitionToJson(this);
}