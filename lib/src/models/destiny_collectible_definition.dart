import 'destiny_display_properties_definition.dart';
import 'destiny_collectible_acquisition_block.dart';
import 'destiny_collectible_state_block.dart';
import 'destiny_presentation_child_block.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_collectible_definition.g.dart';

/// Defines a
@JsonSerializable()
class DestinyCollectibleDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// Indicates whether this Collectible&#39;s state is determined on a per-character or on an account-wide basis.
	@JsonKey(name:'scope')
	int scope;

	/// A human readable string for a hint about how to acquire the item.
	@JsonKey(name:'sourceString')
	String sourceString;

	/// This is a hash identifier we are building on the BNet side in an attempt to let people group collectibles by similar sources.
	/// I can&#39;t promise that it&#39;s going to be 100% accurate, but if the designers were consistent in assigning the same source strings to items with the same sources, it *ought to* be. No promises though.
	/// This hash also doesn&#39;t relate to an actual definition, just to note: we&#39;ve got nothing useful other than the source string for this data.
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

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyCollectibleDefinition();

	factory DestinyCollectibleDefinition.fromJson(Map<String, dynamic> json) => _$DestinyCollectibleDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyCollectibleDefinitionToJson(this);
}
